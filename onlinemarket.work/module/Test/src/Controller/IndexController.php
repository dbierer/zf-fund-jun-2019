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

class IndexController extends AbstractActionController
{
	protected $time;
	public function __construct(DateTime $time)
	{
		$this->time = $time;
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
}
