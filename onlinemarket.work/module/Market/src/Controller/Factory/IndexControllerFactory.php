<?php
namespace Market\Controller\Factory;

use Model\Table\Listings;
use Market\Controller\IndexController;
use Interop\Container\ContainerInterface;
use Zend\ServiceManager\Factory\FactoryInterface;

class IndexControllerFactory implements FactoryInterface
{
    public function __invoke(ContainerInterface $container, $requestedName, array $options = null)
    {
        return new IndexController(
			$container->get('online-market-categories'),
			$container->get(Listings::class));
    }
}
