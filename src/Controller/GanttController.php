<?php

namespace App\Controller;

use App\Repository\AffectationRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

#[Route('/gantt')]
class GanttController extends AbstractController
{
    #[Route('', name: 'app_gantt_index', methods: ['GET'])]
    public function index(AffectationRepository $affectationRepository): Response
    {
        $affectations = $affectationRepository->findAllValidated();

        $tasks = [];
        foreach ($affectations as $a) {
            if (!$a->getMateriel() || !$a->getChantier() || !$a->getDateDebut() || !$a->getDateFin()) {
                continue;
            }

            $tasks[] = [
                'id' => 'aff-' . $a->getId(),
                'name' => $a->getMateriel()->getLibelle() . ' — ' . $a->getChantier()->getNom(),
                'start' => $a->getDateDebut()->format('Y-m-d'),
                'end' => $a->getDateFin()->format('Y-m-d'),
                'progress' => 100,
                'custom_class' => 'ch-' . $a->getChantier()->getId(),
            ];
        }

        usort($tasks, function ($t1, $t2) {
            [$m1] = explode(' — ', $t1['name'], 2);
            [$m2] = explode(' — ', $t2['name'], 2);
            $cmp = strcmp($m1, $m2);
            return $cmp === 0 ? strcmp($t1['start'], $t2['start']) : $cmp;
        });

        $byMaterial = [];
        foreach ($tasks as $idx => $t) {
            $mat = explode(' — ', $t['name'], 2)[0];
            $byMaterial[$mat][] = $idx;
        }

        foreach ($byMaterial as $indices) {
            $prevEnd = null;
            $prevIdx = null;
            foreach ($indices as $i) {
                $s = new \DateTimeImmutable($tasks[$i]['start']);
                $e = new \DateTimeImmutable($tasks[$i]['end']);
                if ($prevEnd && $s <= $prevEnd) {
                    $tasks[$i]['custom_class'] .= ' overlap';
                    $tasks[$prevIdx]['custom_class'] .= ' overlap';
                }
                if (!$prevEnd || $e > $prevEnd) {
                    $prevEnd = $e;
                    $prevIdx = $i;
                }
            }
        }

        return $this->render('gantt/index.html.twig', [
            'tasks' => json_encode($tasks, JSON_UNESCAPED_SLASHES),
        ]);
    }
}
