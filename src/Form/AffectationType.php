<?php

namespace App\Form;

use App\Entity\Affectation;
use App\Entity\Chantier;
use App\Entity\Materiel;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class AffectationType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('dureeUtilisation')
            ->add('moisFacturation')
            ->add('chantier', EntityType::class, [
                'class' => Chantier::class,
            'choice_label' => 'nom',
            'placeholder' => '— Aucun chantier —',
            ])
            ->add('materiel', EntityType::class, [
                'class' => Materiel::class,
            'choice_label' => 'libelle',
            'placeholder' => '— Aucun matériel —',
            ])
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Affectation::class,
        ]);
    }
}
