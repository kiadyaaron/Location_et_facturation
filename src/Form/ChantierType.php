<?php

namespace App\Form;

use App\Entity\Chantier;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class ChantierType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('Nom', TextType::class, [
                'label' => 'Nom',
            ])
            ->add('CodeChantier', TextType::class, [
                'label' => 'Code chantier',
            ])
            ->add('Adresse', TextType::class, [
                'label' => 'Adresse',
            ])
            ->add('NIF', TextType::class, [
                'label' => 'NIF',
            ])
            ->add('STAT', TextType::class, [
                'label' => 'STAT',
            ])
            ->add('email', ChoiceType::class, [
                'label' => 'e-mail',
                'choices'  => [
                    'andrianina.randriamiharisoa@volta.mg' => 'andrianina.randriamiharisoa@volta.mg',
                    'andrianirina.rakotoarivony@oti.mg' => 'andrianirina.rakotoarivony@oti.mg',
                    'angelo.staelen@oti.mg' => 'angelo.staelen@oti.mg',
                    'aroui@oti.mg' => 'aroui@oti.mg',
                    'cyrine@oti.mg' => 'cyrine@oti.mg',
                    'hery.randria@oti.mg' => 'hery.randria@oti.mg',
                    'kanto@oti.mg' => 'kanto@oti.mg',
                    'radohery.rakotomalala@oti.mg' => 'radohery.rakotomalala@oti.mg',
                    'rivo@oti.mg' => 'rivo@oti.mg',
                    'aaronkiady@gmail.com' => 'aaronkiady@gmail.com',
                    'ramijoroaaaron@gmail.com' => 'ramijoroaaaron@gmail.com',
                ],
            ])

            ->add('ResponsableChantier', TextType::class, [
                'label' => 'Responsable du chantier',
            ])
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Chantier::class,
        ]);
    }
}
