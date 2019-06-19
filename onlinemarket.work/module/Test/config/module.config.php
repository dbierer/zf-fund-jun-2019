<?php
namespace Test;
use Test\Service\TestDateTime;
use Test\Controller\Plugin\ {Upper,DayWeekMonth};
use Zend\Router\Http\Literal;
use Zend\Router\Http\Segment;
use Zend\ServiceManager\Factory\InvokableFactory;
return [
    'router' => [
		'routes' => [
			'test' => [
				'type' => Segment::class,
				'options' => [
                    'route'    => '/test[/:action]',
					'defaults' => [
						'controller' => Controller\IndexController::class,
						'action'     => 'index',
					],
				],
			],
		],
    ],
    'view_manager' => [
        'template_path_stack' => [__DIR__ . '/../view'],
        'strategies' => ['ViewJsonStrategy'],
    ],
    'controllers' => [
        'factories' => [
            Controller\IndexController::class => Controller\IndexControllerFactory::class,
        ],
    ],
    'controller_plugins' => [
		'factories' => [
			Upper::class => InvokableFactory::class,
			DayWeekMonth::class => InvokableFactory::class,
		],
		'aliases' => [
			'upper' => Upper::class,
			'dayWeekMonth' => DayWeekMonth::class,
		],
	],
];
