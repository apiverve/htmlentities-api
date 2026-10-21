# HTML Entities Encoder/Decoder API - PHP Package

HTML Entities Encoder/Decoder converts special characters into safe HTML entities or restores encoded strings back to standard text. Pass any HTML markup or text snippet to receive the converted string, a replacement count, and a list of modified characters.

## Installation

Install via Composer:

```bash
composer require apiverve/htmlentities
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Htmlentities\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute([
    'html' => '<div class="test">Hello & World</div>',
    'action' => 'encode'
]);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Htmlentities\Client;
use APIVerve\Htmlentities\Exceptions\APIException;
use APIVerve\Htmlentities\Exceptions\ValidationException;

try {
    $response = $client->execute(['html' => '<div class="test">Hello & World</div>', 'action' => 'encode']);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "action": "encode",
    "original": "<div class=\"test\">Hello & World</div>",
    "encoded": "&lt;div class=&quot;test&quot;&gt;Hello &amp; World&lt;&#x2F;div&gt;",
    "entities_replaced": [
      "<",
      "\"",
      ">",
      "&",
      "/"
    ],
    "count": 8
  }
}
```

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/htmlentities?utm_source=packagist&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/htmlentities?utm_source=php&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/htmlentities?utm_source=php&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
