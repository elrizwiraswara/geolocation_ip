import 'dart:convert';

import 'package:http/http.dart' as http;

import '../geolocation_ip.dart';

/// [GeolocationIP] A class for retrieving geolocation information based on an IP address.
class GeolocationIP {
  /// Fetches the [LocationInfo] for a given [ip] address.
  ///
  /// If the optional [lang] parameter is provided, the response will be in the specified language.
  /// Returns `null` if the request fails or the IP address is invalid.
  ///
  /// Example:
  /// ```dart
  /// final locationInfo = await GeolocationIP.getInfo('8.8.8.8');
  /// ```
  static Future<LocationInfo?> getInfo(String ip, {Lang? lang}) async {
    try {
      // Constructing the URI for the API request. If a language is provided, it is included as a query parameter.
      final uri = Uri.parse(
        "http://ip-api.com/json/$ip${lang != null ? '?lang=${lang.value}' : ''}",
      );

      // Sending the HTTP GET request to the constructed URI.
      final response = await http.get(uri);

      // If the response status is 200 (OK), parse the JSON response body.
      if (response.statusCode == 200) {
        final parsed = jsonDecode(response.body);
        // Create and return a LocationInfo object from the parsed JSON.
        return LocationInfo.fromJson(parsed);
      }

      // If the response status is not 200, return null.
      return null;
    } catch (e) {
      // If an error occurs (e.g., network issue), return null.
      return null;
    }
  }
}
