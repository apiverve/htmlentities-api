# HTML Entities Encoder/Decoder API - Ruby Gem

HTML Entities Encoder/Decoder converts special characters into safe HTML entities or restores encoded strings back to standard text. Pass any HTML markup or text snippet to receive the converted string, a replacement count, and a list of modified characters.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_htmlentities'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_htmlentities
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_htmlentities'

# Initialize the client
client = APIVerve::Htmlentities::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({
  html: "<div class=\"test\">Hello & World</div>",
  action: "encode"
})

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ html: "<div class=\"test\">Hello & World</div>", action: "encode" })
  puts response["data"]
rescue APIVerve::Htmlentities::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Htmlentities::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Htmlentities::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
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

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/htmlentities?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/htmlentities?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/htmlentities?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
