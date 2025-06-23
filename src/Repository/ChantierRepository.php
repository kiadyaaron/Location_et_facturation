<?php

namespace App\Repository;

use App\Entity\Chantier;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @extends ServiceEntityRepository<Chantier>
 *
 * @method Chantier|null find($id, $lockMode = null, $lockVersion = null)
 * @method Chantier|null findOneBy(array $criteria, array $orderBy = null)
 * @method Chantier[]    findAll()
 * @method Chantier[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class ChantierRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Chantier::class);
    }

    /**
     * Trouve les chantiers dont le nom commence par une certaine valeur
     */
    public function findByNomCommencantPar(string $nom): array
    {
        return $this->createQueryBuilder('c')
            ->where('c.nom LIKE :nom')
            ->setParameter('nom', $nom . '%')
            ->getQuery()
            ->getResult();
    }

    public function search(string $term): array
    {
        $qb = $this->createQueryBuilder('c')
            ->where('LOWER(c.nom) LIKE :term')
            ->orWhere('LOWER(c.CodeChantier) LIKE :term')
            ->orWhere('LOWER(c.Adresse) LIKE :term')
            ->orWhere('LOWER(c.NIF) LIKE :term')
            ->orWhere('LOWER(c.STAT) LIKE :term')
            ->orWhere('LOWER(c.ContactClient) LIKE :term')
            ->orWhere('LOWER(c.ResponsableChantier) LIKE :term') 
            ->setParameter('term', '%' . strtolower($term) . '%')
        ;

        return $qb->getQuery()->getResult();
    }
}
