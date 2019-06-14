<?php
/**
 * @link      http://github.com/zendframework/ZendSkeletonMarket for the canonical source repository
 * @copyright Copyright (c) 2005-2016 Zend Technologies USA Inc. (http://www.zend.com)
 * @license   http://framework.zend.com/license/new-bsd New BSD License
 */

namespace Market\Controller;

use Zend\Mvc\Controller\AbstractActionController;
use Zend\View\Model\ViewModel;

class IndexController extends AbstractActionController
{
    public function indexAction()
    {
		$this->layout()->setTemplate('market/layout/layout');
		$name = $this->params()->fromQuery('name', 'Unknown');
        return new ViewModel(['name' => $name]);
    }
    public function testAction()
    {
		$name = $this->params()->fromQuery('name', 'Unknown');
		$viewModel = new ViewModel(['name' => $this->upper($name)]);
		$viewModel->setTemplate('market/index/index');
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
}
