<?php
namespace Market\Controller\Factory;

use Market\Form\PostForm;
use Interop\Container\ContainerInterface;
use Zend\ServiceManager\Factory\FactoryInterface;
use Market\Controller\PostController;

class PostControllerFactory implements FactoryInterface
{
    /**
     * @param ContainerInterface $container
     * @param string $requestedName
     * @param null|array $options
     * @return PostController
     */
    public function __invoke(ContainerInterface $container, $requestedName, array $options = null)
    {
		//*** NOTE: here you could check for authorization before delivering a given form
        $controller = new PostController();
        $controller->setPostForm($container->get(PostForm::class));
        return $controller;
    }
}
