import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LocationServices extends StatefulWidget {
  const LocationServices({super.key});

  @override
  State<LocationServices> createState() => _LocationServicesState();
}

class _LocationServicesState extends State<LocationServices> {
  getCurrentLocation() async {
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied ||
        permission == LocationPermission.deniedForever) {
      log("Location Denied");
      LocationPermission ask = await Geolocator.requestPermission();
    }else{
      Position currentposition = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.best);
   log("Latitude=  ${ currentposition.latitude.toString()}");
      log("Longitude=  ${ currentposition.longitude.toString()}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Geolocator'),backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(onPressed: () {
          getCurrentLocation();
        }, child: Text('"Grab Location')),
      ),
    );
  }
}
