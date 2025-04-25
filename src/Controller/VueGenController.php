<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;

final class VueGenController extends AbstractController{
    #[Route('Vue_general', name: 'app_vueGen')]
    public function index(): Response
    {
        return $this->render('vue_gen/index.html.twig',);
    }
}
