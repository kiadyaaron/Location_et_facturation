<?php

namespace App\Controller;

use App\Entity\Affectation;
use App\Entity\User;
use App\Form\AffectationType;
use App\Repository\AffectationRepository;
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
final class AffectationController extends AbstractController{
    #[Route(name: 'app_affectation_index', methods: ['GET'])]
    public function index(AffectationRepository $affectationRepository): Response
    {
        return $this->render('affectation/index.html.twig', [
            'affectations' => $affectationRepository->findAllValidated(),
        ]);
    }

    #[IsGranted('ROLE_ADMIN')]
    #[Route('/new', name: 'app_affectation_new', methods: ['GET', 'POST'])]
    public function new(Request $request, EntityManagerInterface $entityManager, MailerInterface $mailer): Response
    {
        $affectation = new Affectation();
        $form = $this->createForm(AffectationType::class, $affectation);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->persist($affectation);
            $entityManager->flush();

        // Génération du lien de validation absolu
            $validationUrl = $this->generateUrl(
                'app_affectation_validate',
                ['id' => $affectation->getId()],
                UrlGeneratorInterface::ABSOLUTE_URL
            );    

    $email = (new Email())
        ->from('aaronkiady@gmail.com')
        ->to('ramijoroaaaron@gmail.com')
        ->subject('Validation d\'une nouvelle affectation')
        ->html($this->renderView('emails/validation_affectation.html.twig', [
            'affectation' => $affectation,
            'validationUrl' => $validationUrl,
        ]));

    $mailer->send($email);

        if ($this->isGranted('ROLE_SUPER_ADMIN')) {
            return $this->redirectToRoute('app_home', [], Response::HTTP_SEE_OTHER);
        } else {
            return $this->redirectToRoute('app_affectation_index', [], Response::HTTP_SEE_OTHER);
        }
    }

        return $this->render('affectation/new.html.twig', [
            'affectation' => $affectation,
            'form' => $form,
        ]);
    }

    #[Route('/validate/{id}', name: 'app_affectation_validate')]
public function validateAffectation(Affectation $affectation, EntityManagerInterface $em): Response
{
    $this->denyAccessUnlessGranted('ROLE_SUPER_ADMIN'); // optionnel si vous avez ce rôle

    $affectation->setIsValidated(true);
    $em->flush();

    $this->addFlash('success', 'Affectation validée avec succès.');
    return $this->redirectToRoute('app_affectation_index');
}

    #[Route('/{id}', name: 'app_affectation_show', methods: ['GET'])]
    public function show(Affectation $affectation): Response
    {
        return $this->render('affectation/show.html.twig', [
            'affectation' => $affectation,
        ]);
    }

    #[IsGranted('ROLE_ADMIN')]
    #[Route('/{id}/edit', name: 'app_affectation_edit', methods: ['GET', 'POST'])]
    public function edit(Request $request, Affectation $affectation, EntityManagerInterface $entityManager): Response
    {
        $form = $this->createForm(AffectationType::class, $affectation);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->flush();

            return $this->redirectToRoute('app_affectation_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->render('affectation/edit.html.twig', [
            'affectation' => $affectation,
            'form' => $form,
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

        return $this->redirectToRoute('app_affectation_index', [], Response::HTTP_SEE_OTHER);
    }
}
