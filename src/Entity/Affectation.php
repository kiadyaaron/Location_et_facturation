<?php

namespace App\Entity;

use App\Repository\AffectationRepository;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: AffectationRepository::class)]
class Affectation
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(type: 'datetime_immutable')]
    private ?\DateTimeImmutable $dateDebut = null;

    #[ORM\Column(type: 'datetime_immutable')]
    private ?\DateTimeImmutable $dateFin = null;

    #[ORM\ManyToOne(inversedBy: 'affectations')]
    #[ORM\JoinColumn(nullable: false)]
    private ?Materiel $materiel = null;

    #[ORM\ManyToOne(inversedBy: 'affectations')]
    #[ORM\JoinColumn(nullable: false)]
    private ?Chantier $chantier = null;

    #[ORM\Column(type: 'boolean')]
    private bool $isValidated = false;

    public function isValidated(): bool
{
    return $this->isValidated;
}

public function setIsValidated(bool $isValidated): static
{
    $this->isValidated = $isValidated;
    return $this;
}

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getDateDebut(): ?\DateTimeImmutable
    {
        return $this->dateDebut;
    }

    public function setDateDebut(\DateTimeImmutable $dateDebut): self
    {
        $this->dateDebut = $dateDebut;
        return $this;
    }

    public function getDateFin(): ?\DateTimeImmutable
    {
        return $this->dateFin;
    }

    public function setDateFin(\DateTimeImmutable $dateFin): self
    {
        $this->dateFin = $dateFin;
        return $this;
    }

    public function getMateriel(): ?Materiel
    {
        return $this->materiel;
    }

    public function setMateriel(?Materiel $materiel): self
    {
        $this->materiel = $materiel;
        return $this;
    }

    public function getChantier(): ?Chantier
    {
        return $this->chantier;
    }

    public function setChantier(?Chantier $chantier): self
    {
        $this->chantier = $chantier;
        return $this;
    }



    /**
     * Calcule la durée d'utilisation dans un mois donné.
     */
    public function getDureeUtilisation(\DateTimeInterface $mois): int
{
    $debutAffectation = $this->getDateDebut();
    $finAffectation = $this->getDateFin();

    if (!$debutAffectation || !$finAffectation) {
        return 0;
    }

    // Normalisation des dates au format "00:00:00"
    $debutAffectation = (new \DateTimeImmutable($debutAffectation->format('Y-m-d')))->setTime(0, 0);
    $finAffectation = (new \DateTimeImmutable($finAffectation->format('Y-m-d')))->setTime(0, 0);

    $debutMois = (new \DateTimeImmutable($mois->format('Y-m-01')))->setTime(0, 0);
    $finMois = $debutMois->modify('last day of this month')->setTime(0, 0);

    $debutUtilisation = $debutAffectation > $debutMois ? $debutAffectation : $debutMois;
    $finUtilisation = $finAffectation < $finMois ? $finAffectation : $finMois;

    if ($finUtilisation < $debutUtilisation) {
        return 0;
    }

    return (int) $finUtilisation->diff($debutUtilisation)->days + 1;
}



    public function getDureeUtilisationTotale(): int
{
    if (!$this->dateDebut || !$this->dateFin) {
        return 0;
    }

    return $this->dateFin->diff($this->dateDebut)->days + 1;
}

}
