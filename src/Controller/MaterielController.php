<?php

namespace App\Controller;

use App\Entity\Materiel;
use App\Form\MaterielType;
use App\Repository\MaterielRepository;
use App\Form\ImportKilometrageType;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;
use Doctrine\DBAL\Exception\ForeignKeyConstraintViolationException;
use Symfony\Component\Security\Http\Attribute\IsGranted;
use PhpOffice\PhpSpreadsheet\IOFactory;

#[Route('/materiel')]
final class MaterielController extends AbstractController{
    #[Route(name: 'app_materiel_index', methods: ['GET'])]
    public function index(Request $request, MaterielRepository $materielRepository): Response
    {
        $search = $request->query->get('search'); 
        
        if ($search) {
            $materiels = $materielRepository->search($search);
        } else {
            $materiels = $materielRepository->findAll();
        }

        return $this->render('materiel/index.html.twig', [
            'materiels' => $materiels,
        ]);
    }

    #[IsGranted('ROLE_ADMIN')]
    #[Route('/new', name: 'app_materiel_new', methods: ['GET', 'POST'])]
    public function new(Request $request, EntityManagerInterface $entityManager): Response
    {
        $materiel = new Materiel();
        $form = $this->createForm(MaterielType::class, $materiel);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->persist($materiel);
            $entityManager->flush();

            return $this->redirectToRoute('app_materiel_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->render('materiel/new.html.twig', [
            'materiel' => $materiel,
            'form' => $form,
        ]);
    }

    #[IsGranted('ROLE_ADMIN')]
    #[Route('/import', name: 'app_import_kilometrage')]
    public function importKilometrage(Request $request, EntityManagerInterface $em, MaterielRepository $repo): Response
    {
        $form = $this->createForm(ImportKilometrageType::class);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $file = $form->get('excelFile')->getData();

            try {
                $spreadsheet = IOFactory::load($file->getPathname());
                $sheet = $spreadsheet->getActiveSheet();
                $rows = $sheet->toArray();

                $updated = 0;
                foreach (array_slice($rows, 1) as $row) {
                    $libelle = trim((string) $row[0]);
                    $kilometrage = trim((string) $row[1]);

                    if (!$libelle || !$kilometrage || !is_numeric($kilometrage)) {
                        continue;
                    }

                    $materiel = $repo->findOneBy(['libelle' => $libelle]);

                    if ($materiel) {
                        $materiel->setKilometrage((int) $kilometrage);
                        $em->persist($materiel);
                        $updated++;
                    } else {
                        $this->addFlash('error', "Matériel introuvable : '$libelle'");
                    }
                }

                $em->flush();
                $this->addFlash('success', "$updated matériels mis à jour.");
            } catch (\Exception $e) {
                $this->addFlash('error', 'Erreur lors de l’import : ' . $e->getMessage());
            }

            return $this->redirectToRoute('app_materiel_index');
        }

        return $this->render('import/import_kilometrage.html.twig', [
            'form' => $form,
        ]);
    }

    #[Route('/{id}', name: 'app_materiel_show', methods: ['GET'])]
    public function show(Materiel $materiel): Response
    {
        return $this->render('materiel/show.html.twig', [
            'materiel' => $materiel,
        ]);
    }

    #[IsGranted('ROLE_ADMIN')]
    #[Route('/{id}/edit', name: 'app_materiel_edit', methods: ['GET', 'POST'])]
    public function edit(Request $request, Materiel $materiel, EntityManagerInterface $entityManager): Response
    {
        $form = $this->createForm(MaterielType::class, $materiel);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->flush();

            return $this->redirectToRoute('app_materiel_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->render('materiel/edit.html.twig', [
            'materiel' => $materiel,
            'form' => $form,
        ]);
    }

    #[IsGranted('ROLE_ADMIN')]
    #[Route('/{id}', name: 'app_materiel_delete', methods: ['POST'])]
    public function delete(Request $request, Materiel $materiel, EntityManagerInterface $entityManager): Response
    {
        if ($this->isCsrfTokenValid('delete'.$materiel->getId(), $request->getPayload()->getString('_token'))) {
            
            try {
                $entityManager->remove($materiel);
                $entityManager->flush();
    
                $this->addFlash('success', 'Matériel supprimé avec succès.');
            } catch (ForeignKeyConstraintViolationException $e) {
                $this->addFlash('danger', 'Vous ne pouvez pas supprimer ce matériel car il est encore affecté à un chantier.');
            }
        }

        return $this->redirectToRoute('app_materiel_index', [], Response::HTTP_SEE_OTHER);
    }

}
