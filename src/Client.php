<?php

namespace GptImages25;

/**
 * GPT images 2.5 Official PHP Client
 * Website: https://images25.art
 */
class Client
{
    const WEBSITE = 'https://images25.art';
    const VERSION = '0.1.0';

    protected $apiKey;
    protected $baseUrl;

    public function __construct($apiKey = null, $baseUrl = 'https://images25.art')
    {
        $this->apiKey = $apiKey;
        $this->baseUrl = $baseUrl;
    }

    public function getWebsite()
    {
        return $this->baseUrl;
    }
}
