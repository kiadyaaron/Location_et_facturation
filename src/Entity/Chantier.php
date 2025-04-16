<?php

namespace App\Entity;

use App\Repository\ChantierRepository;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: ChantierRepository::class)]
class Chantier
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(length: 255)]
    private ?string $Nom = null;

    #[ORM\Column(length: 255)]
    private ?string $CodeChantier = null;

    #[ORM\Column(length: 255)]
    private ?string $Adresse = null;

    #[ORM\Column(length: 255)]
    private ?string $NIF = null;

    #[ORM\Column(length: 255)]
    private ?string $STAT = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $ContactClient = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $ResponsableChantier = null;

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
        return $this->Nom;
    }

    public function setNom(string $Nom): static
    {
        $this->Nom = $Nom;

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

    public function getContactClient(): ?string
    {
        return $this->ContactClient;
    }

    public function setContactClient(string $ContactClient): static
    {
        $this->ContactClient = $ContactClient;

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
}
