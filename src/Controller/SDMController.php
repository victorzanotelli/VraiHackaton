<?php

namespace App\Controller;

use App\Controller\AbstractController;
use App\Model\SDMManager;

class SDMController extends AbstractController
{
    public function contentCreator(): ?string
    {
        $posts = [];

        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $trimPost = array_map('trim', $_POST);
            $posts = array_map('htmlentities', $trimPost);
            $sDMManager = new SDMManager();
            $sDMManager->insert($posts);
        }
        return $this->twig->render('Home/index.html.twig', ['posts' => $posts]);
    }
}
