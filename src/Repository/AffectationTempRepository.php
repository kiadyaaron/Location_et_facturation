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

    // Tu peux ajouter ici des méthodes personnalisées si nécessaire
}
