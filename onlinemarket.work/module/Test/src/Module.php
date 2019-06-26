<?php
namespace Test;
use DateTime;
use Zend\Mvc\MvcEvent;
use Zend\Db\Adapter\Adapter;
class Module
{
	public function onBootstrap(MvcEvent $e)
	{
		$em = $e->getApplication()->getEventManager();
		$shared = $em->getSharedManager();
		$shared->attach('*', 'test-event', [$this, 'listener2'], 99);
	}
	public function listener2($e)
	{
		echo '<pre>';
		echo '<br>' . __METHOD__ . ':' . get_class($e);
		echo '<br>Name: ' . $e->getName();
		echo '<br>Target: ' . get_class($e->getTarget());
		echo '<br>Params: ' . var_export($e->getParams(), TRUE);
		echo '</pre>';
	}
    public function getConfig()
    {
		return include __DIR__ . '/../config/module.config.php';
    }
    public function getServiceConfig()
    {
		return [
			'factories' => [
				'test-date-time-service' => function ($container, $requestedName, $options = NULL) {
					return new DateTime();
				},
				'test-adapter' => function ($container) {
					return new Adapter($container->get('local-db-config'));
				},
			],
			'services' => [
				'test1' => [
					__FILE__
				],
				'test2' => __FILE__,
			],
		];
    }
}
