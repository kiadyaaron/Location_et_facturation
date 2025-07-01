<?php

namespace App\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\FileType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Validator\Constraints\File;

class ImportKilometrageType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder->add('excelFile', FileType::class, [
            'label' => 'Fichier Excel (.xlsx)',
            'constraints' => [
                new File([
                    'maxSize' => '2M',
                    'mimeTypes' => ['application/vnd.openxmlformats-officedocument.spreadsheetml.sheet'],
                    'mimeTypesMessage' => 'Veuillez télécharger un fichier Excel valide (.xlsx)',
                ])
            ],
        ]);
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([]);
    }
}

