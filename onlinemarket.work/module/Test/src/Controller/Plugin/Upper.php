<?php
namespace Test\Controller\Plugin;

use Zend\Mvc\Controller\Plugin\AbstractPlugin;

class Upper extends AbstractPlugin
{
	public function __invoke($val)
	{
		return strtoupper($val);
	}
}
