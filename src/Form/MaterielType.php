<?php

namespace App\Form;

use App\Entity\Chantier;
use App\Entity\Materiel;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class MaterielType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('libelle')
            ->add('CodeAffaire')
            ->add('Unite')
            ->add('PrixUnitaire')
            ->add('Description')
            ->add('chantier', EntityType::class, [
    'class' => Chantier::class,
    'choice_label' => function ($chantier) {
        return $chantier->getNom() . ' - ' . $chantier->getAdresse();
    },
    'placeholder' => '— Aucun chantier —',
    'required' => false,
])

        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Materiel::class,
        ]);
    }
}
