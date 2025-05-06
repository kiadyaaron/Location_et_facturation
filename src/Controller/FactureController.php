<?php

namespace App\Controller;

use App\Entity\Facture;
use App\Entity\Chantier;
use App\Repository\AffectationRepository;
use App\Repository\ChantierRepository;
use DateTimeImmutable;
use Dompdf\Dompdf;
use Dompdf\Options;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Doctrine\ORM\EntityManagerInterface;
use IntlDateFormatter;

#[Route('/facture')]
class FactureController extends AbstractController
{
    #[Route('/', name: 'app_facture_index')]
    public function index(ChantierRepository $chantierRepository): Response
    {
        return $this->render('facture/index.html.twig', [
            'chantiers' => $chantierRepository->findAll(),
        ]);
    }

    #[Route('/generate', name: 'app_facture_generate', methods: ['POST'])]
    public function generate(
        Request $request,
        AffectationRepository $affectationRepository,
        ChantierRepository $chantierRepository,
        EntityManagerInterface $entityManager
    ): Response {
        $chantierId = $request->request->get('chantier');
        $moisString = $request->request->get('mois');

        $mois = DateTimeImmutable::createFromFormat('Y-m', $moisString);
        if (!$mois) {
            $this->addFlash('error', 'Format du mois invalide.');
            return $this->redirectToRoute('app_facture_index');
        }

        $chantier = $chantierRepository->find($chantierId);
        if (!$chantier) {
            $this->addFlash('error', 'Chantier non trouvé.');
            return $this->redirectToRoute('app_facture_index');
        }

        $affectations = $affectationRepository->findBy([
            'chantier' => $chantier,
            'moisFacturation' => $moisString,
        ]);

        $totalHT = 0;
        foreach ($affectations as $affectation) {
            $materiel = $affectation->getMateriel();
            $prixUnitaire = $materiel->getPrixUnitaire();
            $quantite = $affectation->getQuantiteMateriel();
            $totalHT += $prixUnitaire * $quantite;
        }

        $tva = $totalHT * 0.2;
        $totalTTC = $totalHT + $tva;
        $montantEnLettres = $this->convertirEnLettres($totalTTC);

        $formatter = new IntlDateFormatter(
            'fr_FR',
            IntlDateFormatter::LONG,
            IntlDateFormatter::NONE,
            'Europe/Paris',
            IntlDateFormatter::GREGORIAN,
            'MMMM'
        );
        $moisTexte = $formatter->format($mois);

        // Création et enregistrement de la facture
        $facture = new Facture();
        $facture->setNumero('FA-' . strtoupper(uniqid()));
        $facture->setDateCreation(new \DateTimeImmutable());
        $facture->setMoisFacture($mois);
        $facture->setChantier($chantier);

        $entityManager->persist($facture);
        $entityManager->flush();

        $pdfOptions = new Options();
        $pdfOptions->set('defaultFont', 'Arial');
        $dompdf = new Dompdf($pdfOptions);

        $html = $this->renderView('facture/pdf.html.twig', [
            'chantier' => $chantier,
            'mois' => $mois,
            'moisTexte' => ucfirst($moisTexte),
            'affectations' => $affectations,
            'totalHT' => $totalHT,
            'tva' => $tva,
            'totalTTC' => $totalTTC,
            'montantEnLettres' => $montantEnLettres,
            'facturee' => $facture->getNumero(),
        ]);

        $dompdf->loadHtml($html);
        $dompdf->setPaper('A4', 'portrait');
        $dompdf->render();

        return new Response($dompdf->output(), 200, [
            'Content-Type' => 'application/pdf',
            'Content-Disposition' => 'inline; filename="' . $facture->getNumero() . '.pdf"',
        ]);
    }

    #[Route('/historique', name: 'app_facture_historique')]
    public function historique(EntityManagerInterface $entityManager): Response
    {
        $factures = $entityManager->getRepository(Facture::class)->findBy([], ['dateCreation' => 'DESC']);

        return $this->render('facture/historique.html.twig', [
            'factures' => $factures,
        ]);
    }

    private function convertirEnLettres(float $montant): string
    {
        $fmt = new \NumberFormatter('fr_FR', \NumberFormatter::SPELLOUT);
        return ucfirst($fmt->format(round($montant))) . ' ariary';
    }
}
