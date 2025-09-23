<?php

namespace App\Repository;

use App\Entity\Affectation;
use App\Entity\AffectationTemp;
use App\Entity\Chantier;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

class AffectationRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Affectation::class);
    }


public function chevauchement(AffectationTemp $affectation): bool
{
    $qb = $this->createQueryBuilder('a');
    $qb->select('COUNT(a.id)')
        ->where('a.materiel = :materiel')
        ->andWhere('a.isValidated = true')
        ->andWhere('a.dateDebut <= :dateFin')
        ->andWhere('a.dateFin >= :dateDebut')
        ->setParameter('materiel', $affectation->getMateriel())
        ->setParameter('dateDebut', $affectation->getDateDebut())
        ->setParameter('dateFin', $affectation->getDateFin());

    return (int) $qb->getQuery()->getSingleScalarResult() > 0;
}

public function chevauchementEdit(AffectationTemp $affectation, Affectation $currentAffectation): bool
{
    $qb = $this->createQueryBuilder('a');
    $qb->select('COUNT(a.id)')
        ->where('a.materiel = :materiel')
        ->andWhere('a.isValidated = true')
        ->andWhere('a.id != :currentId') 
        ->andWhere('a.dateDebut <= :dateFin')
        ->andWhere('a.dateFin >= :dateDebut')
        ->setParameter('materiel', $affectation->getMateriel())
        ->setParameter('currentId', $currentAffectation->getId())
        ->setParameter('dateDebut', $affectation->getDateDebut())
        ->setParameter('dateFin', $affectation->getDateFin());

    return (int) $qb->getQuery()->getSingleScalarResult() > 0;
}


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
    public function search(string $term): array
{
    $qb = $this->createQueryBuilder('a')
        ->leftJoin('a.chantier', 'c')
        ->addSelect('c')
        ->leftJoin('a.materiel', 'm')
        ->addSelect('m')
        ->where('LOWER(m.libelle) LIKE :term')
        ->orWhere('LOWER(c.nom) LIKE :term')
        ->orWhere('LOWER(c.Adresse) LIKE :term')
        ->andWhere('a.isValidated = true')
        ->setParameter('term', '%' . strtolower($term) . '%');

    return $qb->getQuery()->getResult() ?? [];
}

}
