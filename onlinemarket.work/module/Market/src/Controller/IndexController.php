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
	use CategoryTrait;
    public function indexAction()
    {
		$this->layout()->setTemplate('market/layout/layout');
		$name = $this->params()->fromQuery('name', 'Unknown');
        return new ViewModel(['name' => $name, 'categories' => $this->categories]);
    }
}
