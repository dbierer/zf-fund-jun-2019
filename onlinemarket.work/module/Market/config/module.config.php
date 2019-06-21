<?php
/**
 * @link      http://github.com/zendframework/ZendSkeletonMarket for the canonical source repository
 * @copyright Copyright (c) 2005-2016 Zend Technologies USA Inc. (http://www.zend.com)
 * @license   http://framework.zend.com/license/new-bsd New BSD License
 */

namespace Market;

use Market\Helper\LeftLinks;
use Market\Controller\ {IndexController, PostController, ViewController};
use Market\Controller\Factory\ {IndexControllerFactory, PostControllerFactory, ViewControllerFactory};
use Zend\Router\Http\Literal;
use Zend\Router\Http\Segment;
use Zend\ServiceManager\Factory\InvokableFactory;

return [
    'router' => [
        'routes' => [
            'market' => [
                'type'    => Literal::class,
                'options' => [
                    'route'    => '/market',
                    'defaults' => [
                        'controller' => IndexController::class,
                        'action'     => 'index',
                    ],
                ],
                'may_terminate' => TRUE,
                'child_routes' => [
					'home' => [
						'type'    => Literal::class,
						'options' => [
							'route'    => '/',
							'defaults' => [
								'action'     => 'index',
							],
						],
					],
					'post' => [
						'type'    => Segment::class,
						'options' => [
							'route'    => '/post[/]',
							'defaults' => [
								'controller' => PostController::class,
								'action'     => 'index',
							],
						],
					],
					'view' => [
						'type'    => Literal::class,
						'options' => [
							'route'    => '/view',
							'defaults' => [
								'controller' => ViewController::class,
								'action'     => 'index',
							],
						],
						'may_terminate' => TRUE,
						'child_routes' => [
							'lazy' => [
								'type'    => Segment::class,
								'options' => [
									'route'    => '/:category',
									'defaults' => [
										'action'     => 'index',
									],
								],
							],
							'index' => [
								'type'    => Segment::class,
								'options' => [
									'route'    => '/category[/:category]',
									'defaults' => [
										'action'     => 'index',
									],
								],
							],
							'item' => [
								'type'    => Segment::class,
								'options' => [
									'route'    => '/item[/:itemId]',
									'defaults' => [
										'action'     => 'item',
									],
								],
							],
						],
					],
                ],
            ],
        ],
    ],
    'controllers' => [
        'factories' => [
            IndexController::class => IndexControllerFactory::class,
            PostController::class => PostControllerFactory::class,
            ViewController::class => ViewControllerFactory::class,
        ],
    ],
    'view_manager' => [
        'template_path_stack' => [
            __DIR__ . '/../view',
        ],
    ],
    'service_manager' => [
		'services' => [
			'test1' => [
				__FILE__
			],
			'test2' => __FILE__,
		],
	],
	'view_helpers' => [
		'factories' => [
			LeftLinks::class => InvokableFactory::class,
		],
		'aliases' => [
			'leftLinks' => LeftLinks::class,
		],
	],
];
