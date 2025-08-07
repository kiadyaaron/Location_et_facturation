<?php

namespace App\Entity;

use App\Repository\AffectationTempRepository;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: AffectationTempRepository::class)]
class AffectationTemp
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(length: 64, unique: true)]
    private ?string $token = null;

    #[ORM\Column]
    private ?\DateTimeImmutable $dateDebut = null;

    #[ORM\Column]
    private ?\DateTimeImmutable $dateFin = null;

    #[ORM\ManyToOne]
    private ?Chantier $chantier = null;

    #[ORM\ManyToOne]
    private ?Materiel $materiel = null;

    #[ORM\Column]
    private \DateTimeImmutable $createdAt;

    #[ORM\Column(type: 'integer')]
    private int $panne = 0;

    #[ORM\ManyToOne]
    private ?Affectation $affectationOriginale = null;

    public function __construct()
    {
        $this->createdAt = new \DateTimeImmutable();
        $this->token = bin2hex(random_bytes(32));
    }

    public function getId(): ?int { 
        return $this->id; 
    }
    public function getToken(): ?string {
        return $this->token; 
    }

    public function getDateDebut(): ?\DateTimeImmutable {
        return $this->dateDebut; 
    }
    public function setDateDebut(\DateTimeImmutable $dateDebut): static { 
        $this->dateDebut = $dateDebut; 
        return $this;
    }

    public function getDateFin(): ?\DateTimeImmutable { 
        return $this->dateFin; 
    }
    public function setDateFin(\DateTimeImmutable $dateFin): static { 
        $this->dateFin = $dateFin;
        return $this; 
    }

    public function getChantier(): ?Chantier { 
        return $this->chantier; 
    }
    public function setChantier(?Chantier $chantier): static {
        $this->chantier = $chantier; 
        return $this; 
    }

    public function getMateriel(): ?Materiel {
        return $this->materiel; 
    }
    public function setMateriel(?Materiel $materiel): static { 
        $this->materiel = $materiel; 
        return $this; 
    }

    public function getCreatedAt(): \DateTimeImmutable {
        return $this->createdAt; 
    }

    public function getPanne(): int
    {
        return $this->panne;
    }

    public function setPanne(int $panne): static
    {
        $this->panne = $panne;
        return $this;
    }

    public function getAffectationOriginale(): ?Affectation
    {
        return $this->affectationOriginale;
    }

    public function setAffectationOriginale(?Affectation $affectationOriginale): static
    {
        $this->affectationOriginale = $affectationOriginale;
        return $this;
    }
}
