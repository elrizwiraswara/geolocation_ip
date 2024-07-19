import 'package:flutter_test/flutter_test.dart';
import 'package:geolocation_ip/geolocation_ip.dart';

void main() {
  // Grouping related tests for the GeolocationIP class
  group('GeolocationIP', () {
    // Test case to check if the method returns LocationInfo when given a valid IP
    test('returns LocationInfo when the http call completes successfully',
        () async {
      final ip = '8.8.8.8'; // A valid IP address
      final locationInfo = await GeolocationIP.getInfo(
        ip,
      ); // Fetching location info using the valid IP

      // Verifying that the result is not null, indicating a successful fetch
      expect(locationInfo, isNotNull);
    });

    // Test case to check if the method returns null when given an invalid IP
    test('returns null when the http call fails', () async {
      final ip = 'invalid_ip'; // An invalid IP address
      final locationInfo = await GeolocationIP.getInfo(
        ip,
      ); // Attempting to fetch location info using the invalid IP

      // Verifying that the result is null, indicating a failed fetch
      expect(locationInfo, isNull);
    });
  });
}
