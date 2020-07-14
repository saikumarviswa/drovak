import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geolocator/geolocator.dart';

class AboutUs extends StatefulWidget {
  @override
  _AboutUs createState() => _AboutUs();
}

class _AboutUs extends State<AboutUs> {
  final Geolocator geolocator = Geolocator()..forceAndroidLocationManager;

  Position _currentPosition;
  String _currentAddress;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Location"),
        backgroundColor: Colors.orange[900],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (_currentPosition != null) Text(_currentAddress),
            FlatButton(
              child: Text("Get location"),
              onPressed: () {
                _getCurrentLocation();
              },
            ),
            if(_currentPosition != null) Text("LAT: ${_currentPosition.latitude}, LNG: ${_currentPosition.longitude}"),
          ],
        ),
      ),
    );
  }

  _getCurrentLocation() {
    geolocator
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.best)
        .then((Position position) {
      setState(() {
        _currentPosition = position;
      });

      _getAddressFromLatLng();
    }).catchError((e) {
      print(e);
    });
  }

  _getAddressFromLatLng() async {
    try {
      List<Placemark> p = await geolocator.placemarkFromCoordinates(
          _currentPosition.latitude, _currentPosition.longitude);

      Placemark place = p[0];

      setState(() {
        _currentAddress =
        "${place.locality}, ${place.postalCode}, ${place.name}";
      });
    } catch (e) {
      print(e);
    }
  }
}