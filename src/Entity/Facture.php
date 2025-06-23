<?php

namespace App\Entity;

use App\Repository\FactureRepository;
use Doctrine\ORM\Mapping as ORM;
use App\Entity\Chantier;

#[ORM\Entity(repositoryClass: FactureRepository::class)]
class Facture
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(length: 255)]
    private ?string $numero = null;

    #[ORM\Column]
    private ?\DateTimeImmutable $dateCreation = null;

    #[ORM\Column]
    private ?\DateTimeImmutable $moisFacture = null;

    #[ORM\ManyToOne]
    #[ORM\JoinColumn(nullable: false)]
    private ?Chantier $chantier = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $responsableMaintenance = null;

    public function getId(): ?int 
    { 
        return $this->id; 
    }
    public function getNumero(): ?string 
    { 
        return $this->numero; 
    }
    public function setNumero(string $numero): self 
    { 
        $this->numero = $numero; return $this; 
    }

    public function getDateCreation(): ?\DateTimeImmutable 
    { 
        return $this->dateCreation; 
    }
    public function setDateCreation(\DateTimeImmutable $date): self 
    { 
        $this->dateCreation = $date; return $this; 
    }

    public function getMoisFacture(): ?\DateTimeImmutable 
    { 
        return $this->moisFacture; 
    }
    public function setMoisFacture(\DateTimeImmutable $mois): self 
    { 
        $this->moisFacture = $mois; return $this; 
    }

    public function getChantier(): ?Chantier 
    { 
        return $this->chantier; 
    }
    public function setChantier(?Chantier $chantier): self 
    { 
        $this->chantier = $chantier; return $this; 
    }

    public function getResponsableMaintenance(): ?string
    {
        return $this->responsableMaintenance;
    }

    public function setResponsableMaintenance(?string $responsableMaintenance): static
    {
        $this->responsableMaintenance = $responsableMaintenance;
        return $this;
    }
}
