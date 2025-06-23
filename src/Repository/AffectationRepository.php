<?php

namespace App\Repository;

use App\Entity\Affectation;
use App\Entity\Chantier;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

class AffectationRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Affectation::class);
    }

    /**
     * Retourne les affectations d’un chantier pour un mois donné.
     */

    /**
     * Retourne les affectations d’un chantier pour un mois donné.
     */
    public function findByChantierEtMois(Chantier $chantier, \DateTimeImmutable $mois): array
    {
        $debutMois = $mois->modify('first day of this month')->setTime(0, 0);
        $finMois = $mois->modify('last day of this month')->setTime(23, 59, 59);

        return $this->createQueryBuilder('a')
            ->andWhere('a.chantier = :chantier')
            ->andWhere('a.dateDebut <= :finMois')
            ->andWhere('a.dateFin >= :debutMois')
            ->setParameter('chantier', $chantier)
            ->setParameter('debutMois', $debutMois)
            ->setParameter('finMois', $finMois)
            ->getQuery()
            ->getResult();
    }

    public function findAllValidated(): array
{
    return $this->createQueryBuilder('a')
        ->andWhere('a.isValidated = true')
        ->getQuery()
        ->getResult();
}
}
