# HTML Entities Encoder/Decoder API - Dart/Flutter Client

HTML Entities Encoder/Decoder converts special characters into safe HTML entities or restores encoded strings back to standard text. Pass any HTML markup or text snippet to receive the converted string, a replacement count, and a list of modified characters.

[![pub package](https://img.shields.io/pub/v/apiverve_htmlentities.svg)](https://pub.dev/packages/apiverve_htmlentities)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [HTML Entities Encoder/Decoder API](https://apiverve.com/marketplace/htmlentities?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_htmlentities: ^1.2.4
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_htmlentities/apiverve_htmlentities.dart';

void main() async {
  final client = HtmlentitiesClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'html': '<div class="test">Hello & World</div>',
      'action': 'encode'
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

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

## API Reference

- **API Home:** [HTML Entities Encoder/Decoder API](https://apiverve.com/marketplace/htmlentities?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/htmlentities](https://docs.apiverve.com/ref/htmlentities?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)
