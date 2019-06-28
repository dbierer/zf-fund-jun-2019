<?php
namespace Model;

use Model\Table\Listings;
return [
    'service_manager' => [
        'factories' => [
            Table\Listings::class => Table\Factory\ListingsFactory::class,
        ],
    ],
];
