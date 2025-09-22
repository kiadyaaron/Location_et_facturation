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
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Security;

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

   #[Security("is_granted('ROLE_ADMIN') or is_granted('ROLE_IP')")]
#[Route('/new', name: 'app_affectation_new', methods: ['GET', 'POST'])]
public function new(
    Request $request,
    EntityManagerInterface $em,
    MailerInterface $mailer,
    UrlGeneratorInterface $urlGenerator,
    AffectationRepository $affectationRepository,
    AffectationTempRepository $affectationTempRepository
): Response {
    $affectationTemp = new AffectationTemp();
    $form = $this->createForm(AffectationTempType::class, $affectationTemp);
    $form->handleRequest($request);

    if ($form->isSubmitted() && $form->isValid()) {
        // Vérification chevauchement avec les affectations validées
        if ($affectationRepository->chevauchement($affectationTemp)) {
            $this->addFlash('error', 'Ce matériel est déjà affecté à un autre chantier sur cette période.');
            return $this->redirectToRoute('app_affectation_index');
        }
        // Vérification chevauchement avec les affectations temporaires
    if ($affectationTempRepository->chevauchement($affectationTemp)) {
        $this->addFlash('error', 'Une demande d\'affectation est déjà en cours pour ce matériel sur cette période.');
        return $this->redirectToRoute('app_affectation_index');
    }
            $em->persist($affectationTemp);
            $em->flush();

            $validationUrl = $urlGenerator->generate('app_affectation_validate', [
                'token' => $affectationTemp->getToken()
            ], UrlGeneratorInterface::ABSOLUTE_URL);

            /*$validationUrl = preg_replace(
			    '#http://(localhost|127\.0\.0\.1|192\.168\.\d+\.\d+|rme.local):8000#',
			    'http://41.188.51.242:8000',
			    $validationUrl
			);*/

            /** @var \App\Entity\User $user */
            $user = $this->getUser();
            $email = (new Email())
                ->from($user->getEmail())
                ->to($affectationTemp->getChantier()?->getEmail())
                //->cc('tiavina.rakotondrazaka@oti.mg','kanto@oti.mg')
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

    #[IsGranted('ROLE_DIRECTEUR')]
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
        $em->remove($temp);
        $em->flush();

        $this->addFlash('success', 'Affectation validée et enregistrée.');
        return $this->redirectToRoute('app_affectation_index');
    }

    #[Security("is_granted('ROLE_ADMIN') or is_granted('ROLE_IP')")]
#[Route('/{id}/edit', name: 'app_affectation_edit', methods: ['GET', 'POST'])]
public function edit(
    Request $request,
    Affectation $affectation,
    EntityManagerInterface $em,
    MailerInterface $mailer,
    UrlGeneratorInterface $urlGenerator,
    AffectationRepository $affectationRepository // ← Utilisez AffectationRepository
): Response {
    $affectationTemp = new AffectationTemp();
    $affectationTemp
        ->setAffectationOriginale($affectation)
        ->setDateDebut($affectation->getDateDebut())
        ->setDateFin($affectation->getDateFin())
        ->setChantier($affectation->getChantier())
        ->setMateriel($affectation->getMateriel())
        ->setPanne($affectation->getPanne());

    $form = $this->createForm(AffectationTempType::class, $affectationTemp);
    $form->handleRequest($request);

    if ($form->isSubmitted() && $form->isValid()) {
        // Vérification chevauchement (exclut l'affectation actuelle)
        if ($affectationRepository->chevauchementEdit($affectationTemp, $affectation)) {
            $this->addFlash('error', 'Ce matériel est déjà affecté à un autre chantier sur cette période');
            return $this->redirectToRoute('app_affectation_index');
        }
            $em->persist($affectationTemp);
            $em->flush();

            $validationUrl = $urlGenerator->generate('app_affectation_validate_edit', [
                'token' => $affectationTemp->getToken()
            ], UrlGeneratorInterface::ABSOLUTE_URL);

            $validationUrl = preg_replace(
			    '#http://(localhost|127\.0\.0\.1|192\.168\.\d+\.\d+):8000#',
			    'http://41.188.51.242:8000',
			    $validationUrl
			);

            /** @var \App\Entity\User $user */
            $user = $this->getUser();
            $email = (new Email())
                ->from($user->getEmail())
                ->to($affectationTemp->getChantier()?->getEmail())
                /*->cc('tiavina.rakotondrazaka@oti.mg')*/
                ->subject('Validation de modification d\'une affectation')
                ->html($this->renderView('emails/modification_affectation.html.twig', [
                    'affectation' => $affectationTemp,
                    'validationUrl' => $validationUrl,
                ]));

            $mailer->send($email);

            $this->addFlash('success', 'Un lien de validation pour modification a été envoyé par e-mail.');
            return $this->redirectToRoute('app_affectation_index');
        }

        return $this->render('affectation/edit.html.twig', [
            'form' => $form,
            'affectation' => $affectation,
        ]);
    }

    #[IsGranted('ROLE_DIRECTEUR')]
    #[Route('/validate-edit/{token}', name: 'app_affectation_validate_edit')]
    public function validateEditAffectation(
        string $token,
        EntityManagerInterface $em,
        AffectationTempRepository $affectationTempRepo
    ): Response {
        $temp = $affectationTempRepo->findOneBy(['token' => $token]);

        if (!$temp || !$temp->getAffectationOriginale()) {
            throw $this->createNotFoundException("Lien invalide ou expiré.");
        }

        $affectation = $temp->getAffectationOriginale();
        $affectation->setDateDebut($temp->getDateDebut());
        $affectation->setDateFin($temp->getDateFin());
        $affectation->setChantier($temp->getChantier());
        $affectation->setMateriel($temp->getMateriel());
        $affectation->setPanne($temp->getPanne());

        $em->remove($temp);
        $em->flush();

        $this->addFlash('success', 'Modification validée et enregistrée.');
        return $this->redirectToRoute('app_affectation_index');
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
