import 'package:flutter/material.dart';
import 'package:geolocation_ip/geolocation_ip.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Example',
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  LocationInfo? info;

  Future<void> getLocationInfo() async {
    String ip = '24.48.0.1';

    LocationInfo? locationInfo = await GeolocationIP.getInfo(ip, lang: Lang.en);

    print(locationInfo?.toJson());

    info = locationInfo;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              info?.toJson().toString() ?? '',
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 18),
            MaterialButton(
              onPressed: getLocationInfo,
              child: Text("Get Location Info"),
            )
          ],
        ),
      ),
    );
  }
}
