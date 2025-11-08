<?php

return [
    'filesystems' => [
        'default' => 's3',
        'disks' => [
            's3' => [
                'driver' => 's3',
                'key' => getenv('MINIO_ROOT_USER'),
                'secret' => getenv('MINIO_ROOT_PASSWORD'),
                'region' => getenv('S3_REGION') ?: 'eu-central-1',
                'bucket' => getenv('S3_BUCKET') ?: 'bucket',
                'endpoint' => getenv('MINIO_PUBLIC_ENDPOINT'),
                'use_path_style_endpoint' => true,
            ],
            'local' => [
                'driver' => 'local',
                'root' => DIR_APPLICATION . '/files',
            ],
        ],
    ],
];
