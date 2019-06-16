<?php
namespace Test\Controller\Plugin;

use DateTimeImmutable;
use DateInterval;
use Zend\Mvc\Controller\Plugin\AbstractPlugin;

class DayWeekMonth extends AbstractPlugin
{
	const FORMAT = 'l, d M Y';
	public function __invoke()
	{
		$date = new DateTimeImmutable();
		$dmw  = [];
		$dmw['day'] = $date->format(self::FORMAT);
		$dmw['week'] = $date->add(new DateInterval('P1W'))->format(self::FORMAT);
		$dmw['month'] = $date->add(new DateInterval('P1M'))->format(self::FORMAT);
		return $dmw;
	}
}
