<?php
namespace Test;
use DateTime;
class Module
{
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
