import 'package:flutter/material.dart';
import 'package:sample_zone_alerter/AlertPage.dart';
import 'package:sample_zone_alerter/HomePage.dart';
import 'package:sample_zone_alerter/LocationsViewerPage.dart';
import 'package:sample_zone_alerter/RealTimeLocation.dart';
import 'package:sample_zone_alerter/LoadingPage.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'Home',
    routes: {
      'Alert': (context) => Alert(),
      'Home': (context) => Home(),
      'Locations' : (context) => Locations(),
//      'Loading': (context) => Loading(),
//      'RealTimeLocation' : (context) => RealTimeLocation(),
    },
  ));
}
