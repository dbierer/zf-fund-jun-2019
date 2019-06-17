<?php
/**
 * @link      http://github.com/zendframework/ZendSkeletonMarket for the canonical source repository
 * @copyright Copyright (c) 2005-2016 Zend Technologies USA Inc. (http://www.zend.com)
 * @license   http://framework.zend.com/license/new-bsd New BSD License
 */

namespace Market\Controller;

use Zend\Mvc\Controller\AbstractActionController;
use Zend\View\Model\ViewModel;

class ViewController extends AbstractActionController
{
    public function indexAction()
    {
		$category = $this->params()->fromRoute('category', 'default');
        return new ViewModel(['category' => $category]);
    }
    public function itemAction()
    {
		$item = $this->params()->fromRoute('itemId', 1);
        return new ViewModel(['item' => $item]);
    }
}
