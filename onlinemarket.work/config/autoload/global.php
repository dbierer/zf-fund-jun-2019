<?php
/**
 * Global Configuration Override
 *
 * You can use this file for overriding configuration values from modules, etc.
 * You would place values in here that are agnostic to the environment and not
 * sensitive to security.
 *
 * @NOTE: In practice, this file will typically be INCLUDED in your source
 * control, so do not include passwords or other sensitive information in this
 * file.
 */
return [
	'service_manager' => [
		'services' => [
			'online-market-categories' => [
				'barter',
                'beauty',
                'clothing',
                'computer',
                'entertainment',
                'free',
                'garden',
                'general',
                'health',
                'household',
                'phones',
                'property',
                'sporting',
                'tools',
                'transportation',
                'wanted'			
			],
			'test1' => [
				__FILE__
			],
			'test2' => __FILE__,
		],
	],
];
