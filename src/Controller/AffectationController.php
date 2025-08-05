<?php

namespace App\Controller;

use App\Entity\Affectation;
use App\Entity\AffectationTemp;
use App\Form\AffectationTempType;
use App\Repository\AffectationRepository;
use App\Repository\AffectationTempRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;
use Symfony\Component\Security\Http\Attribute\IsGranted;
use Symfony\Component\Mailer\MailerInterface;
use Symfony\Component\Mime\Email;
use Symfony\Component\Routing\Generator\UrlGeneratorInterface;

#[Route('/affectation')]
class AffectationController extends AbstractController
{
    #[Route(name: 'app_affectation_index', methods: ['GET'])]
    public function index(Request $request, AffectationRepository $affectationRepository): Response
    {
        $search = $request->query->get('search');
        $affectations = $search
            ? $affectationRepository->search($search)
            : $affectationRepository->findAllValidated();

        return $this->render('affectation/index.html.twig', [
            'affectations' => $affectations,
        ]);
    }

    #[IsGranted('ROLE_ADMIN')]
    #[Route('/new', name: 'app_affectation_new', methods: ['GET', 'POST'])]
    public function new(
        Request $request,
        EntityManagerInterface $em,
        MailerInterface $mailer,
        UrlGeneratorInterface $urlGenerator
    ): Response {
        $affectationTemp = new AffectationTemp();
        $form = $this->createForm(AffectationTempType::class, $affectationTemp);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em->persist($affectationTemp);
            $em->flush();

            $validationUrl = $urlGenerator->generate('app_affectation_validate', [
                'token' => $affectationTemp->getToken()
            ], UrlGeneratorInterface::ABSOLUTE_URL);

            $email = (new Email())
                ->from('aaronkiady@gmail.com')
                ->to($affectationTemp->getChantier()?->getEmail() ?? 'ramijoroaaaron@gmail.com')
                ->subject('Validation d\'une location de matériel')
                ->html($this->renderView('emails/validation_affectation.html.twig', [
                    'affectation' => $affectationTemp,
                    'validationUrl' => $validationUrl,
                ]));

            $mailer->send($email);

            $this->addFlash('success', 'Un lien de validation a été envoyé par e-mail.');
            return $this->redirectToRoute('app_affectation_index');
        }

        return $this->render('affectation/new.html.twig', [
            'form' => $form,
            'affectation' => $affectationTemp,
        ]);
    }

    #[IsGranted('ROLE_SUPER_ADMIN')]
    #[Route('/validate/{token}', name: 'app_affectation_validate')]
    public function validateAffectation(
        string $token,
        EntityManagerInterface $em,
        AffectationTempRepository $affectationTempRepo
    ): Response {
        $temp = $affectationTempRepo->findOneBy(['token' => $token]);

        if (!$temp) {
            throw $this->createNotFoundException("Lien invalide ou expiré.");
        }

        $affectation = new Affectation();
        $affectation->setDateDebut($temp->getDateDebut());
        $affectation->setDateFin($temp->getDateFin());
        $affectation->setChantier($temp->getChantier());
        $affectation->setMateriel($temp->getMateriel());
        $affectation->setIsValidated(true);
        $affectation->setPanne($temp->getPanne());

        $em->persist($affectation);
        $em->remove($temp); // Supprime la demande temporaire
        $em->flush();

        $this->addFlash('success', 'Affectation validée et enregistrée.');
        return $this->redirectToRoute('app_affectation_index');
    }

    #[IsGranted('ROLE_ADMIN')]
    #[Route('/{id}/edit', name: 'app_affectation_edit', methods: ['GET', 'POST'])]
    public function edit(Request $request, Affectation $affectation, EntityManagerInterface $entityManager): Response
    {
        $form = $this->createForm(AffectationTempType::class, $affectation);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->flush();
            return $this->redirectToRoute('app_affectation_index');
        }

        return $this->render('affectation/edit.html.twig', [
            'affectation' => $affectation,
            'form' => $form,
        ]);
    }

    #[Route('/{id}', name: 'app_affectation_show', methods: ['GET'])]
    public function show(Affectation $affectation): Response
    {
        return $this->render('affectation/show.html.twig', [
            'affectation' => $affectation,
        ]);
    }

    #[IsGranted('ROLE_ADMIN')]
    #[Route('/{id}', name: 'app_affectation_delete', methods: ['POST'])]
    public function delete(Request $request, Affectation $affectation, EntityManagerInterface $entityManager): Response
    {
        if ($this->isCsrfTokenValid('delete'.$affectation->getId(), $request->getPayload()->getString('_token'))) {
            $entityManager->remove($affectation);
            $entityManager->flush();
        }

        return $this->redirectToRoute('app_affectation_index');
    }
}
