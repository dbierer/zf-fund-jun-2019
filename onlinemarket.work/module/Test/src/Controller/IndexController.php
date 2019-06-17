<?php
/**
 * @link      http://github.com/zendframework/ZendSkeletonApplication for the canonical source repository
 * @copyright Copyright (c) 2005-2016 Zend Technologies USA Inc. (http://www.zend.com)
 * @license   http://framework.zend.com/license/new-bsd New BSD License
 */

namespace Test\Controller;

use DateTime;
use Zend\Mvc\Controller\AbstractActionController;
use Zend\View\Model\ViewModel;
use Interop\Container\ContainerInterface;

class IndexController extends AbstractActionController
{
	protected $time;
	protected $container;
	public function __construct(ContainerInterface $container)
	{
		$this->container = $container;
		$this->time = $container->get('test-date-time-service');
	}
    public function indexAction()
    {
		$name = $this->upper('Fred Flintstone');
        return new ViewModel(['name' => $name]);
    }
    public function testAction()
    {
		$name = $this->params()->fromQuery('name', 'Unknown');
		$viewModel = new ViewModel(['name' => $this->upper($name)]);
		$viewModel->setTemplate('test/index/index');
        return $viewModel;
    }
    public function requestAction()
    {
        return new ViewModel(['request' => $this->getRequest()]);
    }
    public function panicAction()
    {
		$response = $this->getResponse();
		$response->setContent('<h1>DO NOT PANIC ... EVERYTHING IS UNDER CONTROL</h1>');
		return $response;
	}
    public function dayWeekMonthAction()
    {
        return new ViewModel($this->dayWeekMonth());
    }
    public function redirectAction()
    {
		$this->redirect()->toUrl('https://unlikelysource.com/');
        return new ViewModel();
    }
    public function timeAction()
    {
		return new ViewModel(['today' => $this->time->format('Y-m-d H:i:s')]);
	}
    public function nestedViewModelsAction()
    {
		$childView1 = new ViewModel(['name' => '11111111']);
		$childView2 = new ViewModel(['name' => '22222222']);
		$childView1->setTemplate('test/index/child1');
		$childView2->setTemplate('test/index/child2');
		$primaryView = new ViewModel();
		$primaryView->addChild($childView1, 'child1');
		$primaryView->addChild($childView2, 'child2');
		return $primaryView;
	}
}
