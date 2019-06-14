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
}
