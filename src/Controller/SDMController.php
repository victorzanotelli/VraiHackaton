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
            header('Location:/');
        }
        return $this->twig->render('Home/addSdm.html.twig', ['posts' => $posts]);
    }
    public function contentIndex(): string
    {
        $contentManager = new SDMManager();
        $posts = $contentManager->selectAll();
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $data = $_POST;
            $sdm = new SDMManager();
            $sdm->love($data);
        }
        return $this->twig->render('Home/index.html.twig', ['posts' => $posts]);
    }
}
