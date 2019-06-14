<?php
namespace Test;

use Zend\Router\Http\Literal;
use Zend\Router\Http\Segment;
use Zend\ServiceManager\Factory\InvokableFactory;

return [
    'router' => [
		'routes' => [
			'test' => [
				'type' => Literal::class,
				'options' => [
					'route'    => '/test',
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
    ],
    'controllers' => [
        'factories' => [
            Controller\IndexController::class => Controller\IndexControllerFactory::class,
        ],
    ],
    'controller_plugins' => [
		'factories' => [
			Controller\Plugin\Upper::class => InvokableFactory::class,
		],
		'aliases' => [
			'upper' => Controller\Plugin\Upper::class,
		],
	],
];

