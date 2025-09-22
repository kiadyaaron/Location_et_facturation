<?php

namespace App\Repository;

use App\Entity\AffectationTemp;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @extends ServiceEntityRepository<AffectationTemp>
 */
class AffectationTempRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, AffectationTemp::class);
    }

     // src/Repository/AffectationTempRepository.php

public function chevauchement(AffectationTemp $affectation): bool
{
    $qb = $this->createQueryBuilder('a');
    $qb->select('COUNT(a.id)')
        ->where('a.materiel = :materiel')
        ->andWhere('a.id != :id OR :id IS NULL')
        ->andWhere('a.dateDebut <= :dateFin')
        ->andWhere('a.dateFin >= :dateDebut')
        ->setParameter('materiel', $affectation->getMateriel())
        ->setParameter('dateDebut', $affectation->getDateDebut())
        ->setParameter('dateFin', $affectation->getDateFin())
        ->setParameter('id', $affectation->getId());

    return (int) $qb->getQuery()->getSingleScalarResult() > 0;
}
}
