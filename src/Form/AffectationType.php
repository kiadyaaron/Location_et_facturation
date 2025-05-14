<?php

namespace App\Form;

use App\Entity\Affectation;
use App\Entity\Chantier;
use App\Entity\Materiel;
use Doctrine\DBAL\Types\TextType as TypesTextType;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class AffectationType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
             ->add('materiel', EntityType::class, [
                'class' => Materiel::class,
            'choice_label' => 'libelle',
            'placeholder' => 'Aucun materiel',
            ])
            ->add('dureeUtilisation')
            ->add('moisFacturation', TextType::class, [
                'label'=> '',
                'attr'=> [
                    'placeholder'=> 'De format YYYY-MM (ex: 2025-04)'
                ]
            ])
            ->add('chantier', EntityType::class, [
                'class' => Chantier::class,
            'choice_label' => 'nom',
            'placeholder' => 'Aucun chantier',
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
