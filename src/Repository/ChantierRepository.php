<?php

namespace App\Repository;

use App\Entity\Chantier;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @extends ServiceEntityRepository<Chantier>
 */
class ChantierRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Chantier::class);
    }

//    /**
//     * @return Chantier[] Returns an array of Chantier objects
//     */
//    public function findByExampleField($value): array
//    {
//        return $this->createQueryBuilder('c')
//            ->andWhere('c.exampleField = :val')
//            ->setParameter('val', $value)
//            ->orderBy('c.id', 'ASC')
//            ->setMaxResults(10)
//            ->getQuery()
//            ->getResult()
//        ;
//    }

//    public function findOneBySomeField($value): ?Chantier
//    {
//        return $this->createQueryBuilder('c')
//            ->andWhere('c.exampleField = :val')
//            ->setParameter('val', $value)
//            ->getQuery()
//            ->getOneOrNullResult()
//        ;
//    }
public function search(string $query): array
{
    return $this->createQueryBuilder('c')
        ->where('c.Nom LIKE :q')
        ->orWhere('c.CodeChantier LIKE :q')
        ->orWhere('c.Adresse LIKE :q')
        ->orWhere('c.NIF LIKE :q')
        ->orWhere('c.STAT LIKE :q')
        ->orWhere('c.ContactClient LIKE :q')
        ->orWhere('c.ResponsableChantier LIKE :q')
        ->setParameter('q', '%' . $query . '%')
        ->orderBy('c.id', 'DESC')
        ->getQuery()
        ->getResult();
}

}
