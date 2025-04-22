<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;
use App\Repository\AffectationRepository;

#[ORM\Entity(repositoryClass: AffectationRepository::class)]
class Affectation
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\ManyToOne(targetEntity: Chantier::class)]
    #[ORM\JoinColumn(nullable: false)]
    private ?Chantier $chantier = null;

    #[ORM\ManyToOne(targetEntity: Materiel::class)]
    #[ORM\JoinColumn(nullable: false)]
    private ?Materiel $materiel = null;

    #[ORM\Column(length: 255)]
    private ?string $dureeUtilisation = null;

    #[ORM\Column(length: 255)]
    private ?string $moisFacturation = null;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getChantier(): ?Chantier
    {
        return $this->chantier;
    }

    public function setChantier(?Chantier $chantier): static
    {
        $this->chantier = $chantier;
        return $this;
    }

    public function getMateriel(): ?Materiel
    {
        return $this->materiel;
    }

    public function setMateriel(?Materiel $materiel): static
    {
        $this->materiel = $materiel;
        return $this;
    }

    public function getDureeUtilisation(): ?int
    {
        return $this->dureeUtilisation;
    }

    public function setDureeUtilisation(int $duree): static
    {
        $this->dureeUtilisation = $duree;
        return $this;
    }

    public function getMoisFacturation(): ?string
    {
        return $this->moisFacturation;
    }

    public function setMoisFacturation(string $mois): static
    {
        $this->moisFacturation = $mois;
        return $this;
    }
}
