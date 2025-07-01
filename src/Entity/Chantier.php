<?php

namespace App\Entity;

use App\Repository\ChantierRepository;
use Doctrine\ORM\Mapping as ORM;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use App\Entity\Materiel;

#[ORM\Entity(repositoryClass: ChantierRepository::class)]
class Chantier
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(length: 255)]
    private ?string $nom = null;

    #[ORM\Column(length: 255)]
    private ?string $CodeChantier = null;

    #[ORM\Column(length: 255)]
    private ?string $Adresse = null;

    #[ORM\Column(length: 255)]
    private ?string $NIF = null;

    #[ORM\Column(length: 255)]
    private ?string $STAT = null;

    #[ORM\Column(length: 180)]
    private ?string $email = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $ResponsableChantier = null;

    #[ORM\OneToMany(mappedBy: 'chantier', targetEntity: Materiel::class, orphanRemoval: true)]
    private Collection $materiels;

    #[ORM\OneToMany(mappedBy: 'chantier', targetEntity: Affectation::class, orphanRemoval: true)]
    private Collection $affectations;

public function getAffectations(): Collection
{
    return $this->affectations;
}

public function addAffectation(Affectation $affectation): static
{
    if (!$this->affectations->contains($affectation)) {
        $this->affectations[] = $affectation;
        $affectation->setChantier($this);
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
        return $this->Nom ?? '';
    }

    public function __construct()
    {
        $this->materiels = new ArrayCollection();
        $this->affectations = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function setId(int $id): static
    {
        $this->id = $id;
        return $this;
    }

    public function getNom(): ?string
    {
        return $this->nom;
    }

    public function setNom(string $nom): static
    {
        $this->nom = $nom;
        return $this;
    }

    public function getCodeChantier(): ?string
    {
        return $this->CodeChantier;
    }

    public function setCodeChantier(string $CodeChantier): static
    {
        $this->CodeChantier = $CodeChantier;
        return $this;
    }

    public function getAdresse(): ?string
    {
        return $this->Adresse;
    }

    public function setAdresse(string $Adresse): static
    {
        $this->Adresse = $Adresse;
        return $this;
    }

    public function getNIF(): ?string
    {
        return $this->NIF;
    }

    public function setNIF(string $NIF): static
    {
        $this->NIF = $NIF;
        return $this;
    }

    public function getSTAT(): ?string
    {
        return $this->STAT;
    }

    public function setSTAT(string $STAT): static
    {
        $this->STAT = $STAT;
        return $this;
    }

    public function getEmail(): ?string
    {
        return $this->email;
    }

    public function setEmail(string $email): self
    {
        $this->email = $email;

        return $this;
    }

    public function getResponsableChantier(): ?string
    {
        return $this->ResponsableChantier;
    }

    public function setResponsableChantier(?string $ResponsableChantier): static
    {
        $this->ResponsableChantier = $ResponsableChantier;
        return $this;
    }

    //Getter/Setter pour accéder à la collection de matériels

    public function getMateriels(): Collection
    {
        return $this->materiels;
    }

    public function addMateriel(Materiel $materiel): static
    {
        if (!$this->materiels->contains($materiel)) {
            $this->materiels[] = $materiel;
            $materiel->setChantier($this);
        }

        return $this;
    }

    public function removeMateriel(Materiel $materiel): static
    {
        if ($this->materiels->removeElement($materiel)) {
            if ($materiel->getChantier() === $this) {
                $materiel->setChantier(null);
            }
        }

        return $this;
    }
}
