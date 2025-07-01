<?php

namespace App\Repository;

use App\Entity\Materiel;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @extends ServiceEntityRepository<Materiel>
 */
class MaterielRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Materiel::class);
    }

//    /**
//     * @return Materiel[] Returns an array of Materiel objects
//     */
//    public function findByExampleField($value): array
//    {
//        return $this->createQueryBuilder('m')
//            ->andWhere('m.exampleField = :val')
//            ->setParameter('val', $value)
//            ->orderBy('m.id', 'ASC')
//            ->setMaxResults(10)
//            ->getQuery()
//            ->getResult()
//        ;
//    }

//    public function findOneBySomeField($value): ?Materiel
//    {
//        return $this->createQueryBuilder('m')
//            ->andWhere('m.exampleField = :val')
//            ->setParameter('val', $value)
//            ->getQuery()
//            ->getOneOrNullResult()
//        ;
//    }
    public function search(string $term): array
    {
        $qb = $this->createQueryBuilder('m')
            ->leftJoin('m.chantier', 'c')
            ->addSelect('c')
            ->where('LOWER(m.libelle) LIKE :term')
            ->orWhere('LOWER(m.CodeAffaire) LIKE :term')
            ->orWhere('LOWER(m.Unite) LIKE :term')
            ->orWhere('LOWER(m.Description) LIKE :term')
            ->orWhere('LOWER(c.nom) LIKE :term') 
            ->setParameter('term', '%' . strtolower($term) . '%')
        ;

        return $qb->getQuery()->getResult();
    }

    public function findOneByLibelle(string $libelle): ?Materiel
    {
        return $this->findOneBy(['libelle' => $libelle]);
    }
}
