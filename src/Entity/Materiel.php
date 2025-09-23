<?php

namespace App\Entity;

use App\Repository\MaterielRepository;
use Doctrine\ORM\Mapping as ORM;
use App\Entity\Chantier;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;

#[ORM\Entity(repositoryClass: MaterielRepository::class)]
class Materiel
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(length: 255)]
    private ?string $libelle = null;
    
    #[ORM\Column(length: 255)]
    private ?string $CodeAffaire = null;

    #[ORM\Column(length: 255)]
    private ?string $Unite = null;

    #[ORM\Column(type: 'integer')]
    private ?int $PrixUnitaire = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $Description = null;

    #[ORM\Column(type: 'integer', nullable: true)]
    private ?int $kilometrage = null;

    #[ORM\ManyToOne(targetEntity: Chantier::class, inversedBy: 'materiels')]
    #[ORM\JoinColumn(nullable: true)] 
    private ?Chantier $chantier = null;

    #[ORM\OneToMany(mappedBy: 'materiel', targetEntity: Affectation::class, orphanRemoval: true)]
    private Collection $affectations;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $Categorie = null;

    public function __construct()
{
    $this->affectations = new ArrayCollection();
}

public function getAffectations(): Collection
{
    return $this->affectations;
}

public function addAffectation(Affectation $affectation): static
{
    if (!$this->affectations->contains($affectation)) {
        $this->affectations[] = $affectation;
        $affectation->setMateriel($this);
    }

    return $this;
}

public function removeAffectation(Affectation $affectation): static
{
    if ($this->affectations->removeElement($affectation)) {
        if ($affectation->getMateriel() === $this) {
            $affectation->setMateriel(null);
        }
    }

    return $this;
}

    public function __toString(): string
    {
        return $this->Libelle ?? '';
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getLibelle(): ?string
    {
        return $this->libelle;
    }

    public function setLibelle(?string $libelle): self
    {
        $this->libelle = $libelle;
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

    public function getPrixUnitaire(): ?int
    {
        return $this->PrixUnitaire;
    }

    public function setPrixUnitaire(int $PrixUnitaire): static
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

    public function getChantier(): ?Chantier
    {
        return $this->chantier;
    }

    public function setChantier(?Chantier $chantier): static
    {
        $this->chantier = $chantier;
        return $this;
    }

    public function getKilometrage(): ?int
    {
        return $this->kilometrage;
    }

    public function setKilometrage(?int $kilometrage): static
    {
        $this->kilometrage = $kilometrage;
        return $this;
    }

    public function getCategorie(): ?string
    {
        return $this->Categorie;
    }

    public function setCategorie(?string $Categorie): static
    {
        $this->Categorie = $Categorie;

        return $this;
    }
}
