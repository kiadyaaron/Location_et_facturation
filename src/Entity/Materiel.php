<?php

namespace App\Entity;

use App\Repository\MaterielRepository;
use Doctrine\ORM\Mapping as ORM;
use App\Entity\Chantier;

#[ORM\Entity(repositoryClass: MaterielRepository::class)]
class Materiel
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(length: 255)]
    private ?string $Libelle = null;

    #[ORM\Column(length: 255)]
    private ?string $CodeAffaire = null;

    #[ORM\Column(length: 255)]
    private ?string $Unite = null;

    #[ORM\Column(length: 255)]
    private ?string $PrixUnitaire = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $Description = null;

    // Relation vers Chantier : chaque matériel est affecté à UN chantier
    #[ORM\ManyToOne(targetEntity: Chantier::class, inversedBy: 'materiels')]
    #[ORM\JoinColumn(nullable: true)] 
    private ?Chantier $chantier = null;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getLibelle(): ?string
    {
        return $this->Libelle;
    }

    public function setLibelle(string $Libelle): static
    {
        $this->Libelle = $Libelle;
        return $this;
    }

    public function getCodeAffaire(): ?string
    {
        return $this->CodeAffaire;
    }

    public function setCodeAffaire(string $CodeAffaire): static
    {
        $this->CodeAffaire = $CodeAffaire;
        return $this;
    }

    public function getUnite(): ?string
    {
        return $this->Unite;
    }

    public function setUnite(string $Unite): static
    {
        $this->Unite = $Unite;
        return $this;
    }

    public function getPrixUnitaire(): ?string
    {
        return $this->PrixUnitaire;
    }

    public function setPrixUnitaire(string $PrixUnitaire): static
    {
        $this->PrixUnitaire = $PrixUnitaire;
        return $this;
    }

    public function getDescription(): ?string
    {
        return $this->Description;
    }

    public function setDescription(?string $Description): static
    {
        $this->Description = $Description;
        return $this;
    }

    // Getter/Setter pour accéder au chantier lié
    public function getChantier(): ?Chantier
    {
        return $this->chantier;
    }

    public function setChantier(?Chantier $chantier): static
    {
        $this->chantier = $chantier;
        return $this;
    }
}
