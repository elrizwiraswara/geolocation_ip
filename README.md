# geolocation_ip

A Dart package leverages the IP-API.com service to provide geolocation data based on IP addresses. This package allows developers to easily integrate IP-based geolocation into their Dart or Flutter applications. It supports fetching detailed location information such as country, region, city, latitude, longitude, and more, without requiring an API key for non-commercial use.


## Installation

Add the following to your `pubspec.yaml` file:

```yaml
dependencies:
  geolocation_ip: ^0.0.3
```

Then run `flutter pub get` to install the package.

## Usage
### Basic Usage

```dart
import 'package:geolocation_ip/geolocation_ip.dart';

...
Future<void> getLocationInfo() async {
  String ip = '24.48.0.1';
  
  LocationInfo? locationInfo = await GeolocationIP.getInfo(ip, lang: Lang.en);

  print(locationInfo?.toJson());
  
  info = locationInfo;
  setState(() {});
}
...
```