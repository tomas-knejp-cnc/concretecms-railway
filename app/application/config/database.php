<?php

return [
    'default-connection' => 'concrete',
    'connections' => [
        'concrete' => [
            'driver' => 'concrete_pdo_mysql',
            'server' => getenv('MYSQLHOST') ?: 'localhost',
            'database' => getenv('MYSQLDATABASE') ?: 'c5',
            'username' => getenv('MYSQLUSER') ?: 'c5',
            'password' => getenv('MYSQLPASSWORD') ?: '12345',
            'character_set' => 'utf8mb4',
            'collation' => 'utf8mb4_unicode_ci',
        ],
    ],
];
