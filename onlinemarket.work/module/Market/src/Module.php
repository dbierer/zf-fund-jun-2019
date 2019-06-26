<?php
/**
 * @link      http://github.com/zendframework/ZendSkeletonMarket for the canonical source repository
 * @copyright Copyright (c) 2005-2016 Zend Technologies USA Inc. (http://www.zend.com)
 * @license   http://framework.zend.com/license/new-bsd New BSD License
 */

namespace Market;

use Zend\Mvc\MvcEvent;
class Module
{
    const VERSION = '3.0.3-dev';

    public function getConfig()
    {
        return include __DIR__ . '/../config/module.config.php';
    }
    public function onBootstrap(MvcEvent $e)
    {
		$em = $e->getApplication()->getEventManager();
		$em->attach(MvcEvent::EVENT_DISPATCH, [$this, 'whatever'], 99);
	}
    public function whatever(MvcEvent $e)
    {
        $layout = $e->getViewModel();
        $container = $e->getApplication()->getServiceManager();
        $layout->setVariable('categories', $container->get('online-market-categories'));
    }
}
