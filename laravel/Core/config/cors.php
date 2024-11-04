<?php

return [

    'paths' => ['api/*', 'sanctum/csrf-cookie', 'mastership/*'],
    // 'paths' => ['*'],

    'allowed_methods' => ['*'],

    'allowed_origins' => explode(',', env('FRONTEND_URLS')),

    'allowed_origins_patterns' => [],

    'allowed_headers' => ['*'],

    'exposed_headers' => [],

    'max_age' => 0,

    'supports_credentials' => true,

];
