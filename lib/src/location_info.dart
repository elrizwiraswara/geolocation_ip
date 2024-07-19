/// [LocationInfo] A class that represents geolocation information for an IP address.
class LocationInfo {
  final String? query;
  final String? status;
  final String? continent;
  final String? continentCode;
  final String? country;
  final String? countryCode;
  final String? region;
  final String? regionName;
  final String? city;
  final String? district;
  final String? zip;
  final double? lat;
  final double? lon;
  final String? timezone;
  final int? offset;
  final String? currency;
  final String? isp;
  final String? org;
  final String? as;
  final String? asname;
  final bool? mobile;
  final bool? proxy;
  final bool? hosting;

  /// Constructs a [LocationInfo] object with optional parameters.
  LocationInfo({
    this.query,
    this.status,
    this.continent,
    this.continentCode,
    this.country,
    this.countryCode,
    this.region,
    this.regionName,
    this.city,
    this.district,
    this.zip,
    this.lat,
    this.lon,
    this.timezone,
    this.offset,
    this.currency,
    this.isp,
    this.org,
    this.as,
    this.asname,
    this.mobile,
    this.proxy,
    this.hosting,
  });

  /// Factory constructor to create a [LocationInfo] object from a JSON map.
  ///
  /// Example:
  /// ```dart
  /// final locationInfo = LocationInfo.fromJson(jsonMap);
  /// ```
  factory LocationInfo.fromJson(Map<String, dynamic> json) {
    return LocationInfo(
      query: json['query'],
      status: json['status'],
      continent: json['continent'],
      continentCode: json['continentCode'],
      country: json['country'],
      countryCode: json['countryCode'],
      region: json['region'],
      regionName: json['regionName'],
      city: json['city'],
      district: json['district'],
      zip: json['zip'],
      lat: json['lat'] != null ? json['lat'].toDouble() : null,
      lon: json['lon'] != null ? json['lon'].toDouble() : null,
      timezone: json['timezone'],
      offset: json['offset'],
      currency: json['currency'],
      isp: json['isp'],
      org: json['org'],
      as: json['as'],
      asname: json['asname'],
      mobile: json['mobile'],
      proxy: json['proxy'],
      hosting: json['hosting'],
    );
  }

  /// Converts a [LocationInfo] object to a JSON map.
  ///
  /// Example:
  /// ```dart
  /// final jsonMap = locationInfo.toJson();
  /// ```
  Map<String, dynamic> toJson() {
    return {
      'query': query,
      'status': status,
      'continent': continent,
      'continentCode': continentCode,
      'country': country,
      'countryCode': countryCode,
      'region': region,
      'regionName': regionName,
      'city': city,
      'district': district,
      'zip': zip,
      'lat': lat,
      'lon': lon,
      'timezone': timezone,
      'offset': offset,
      'currency': currency,
      'isp': isp,
      'org': org,
      'as': as,
      'asname': asname,
      'mobile': mobile,
      'proxy': proxy,
      'hosting': hosting,
    };
  }
}
