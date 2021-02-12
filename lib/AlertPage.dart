import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:sample_zone_alerter/AccidentZoneList.dart';
import 'dart:async';

class Alert extends StatefulWidget {
  @override
  _AlertState createState() => _AlertState();
}

class _AlertState extends State<Alert> {
//  Map data = {};
  double dist;
  Position newPosition;
  Color appBarColor, bgColor;
  String title;
  Location closestPoint;
  List<Location> locations = List<Location>();

  void _getRealTimeLocation() async{
    Geolocator geolocator = Geolocator();
    LocationOptions locationOptions = LocationOptions(accuracy: LocationAccuracy.high,);
    addingLocations(locations);

    Position initialPosition = await Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    Location initialLocation = Location(latitude: initialPosition.latitude,longitude: initialPosition.longitude);

    closestPoint = await getClosestLocation(locations, initialLocation);
    Stream<Position> positionStream = geolocator.getPositionStream(locationOptions);
    positionStream.listen((Position position) async{
      double _newDist;
      _newDist = await Geolocator()
          .distanceBetween(position.latitude, position.longitude,closestPoint.latitude , closestPoint.longitude);
//      print('${position.latitude} , ${position.longitude}');
//      print('${closestPoint.latitude} , ${closestPoint.longitude}');
      closestPoint = await getClosestLocation(locations, initialLocation);
      print("Function Ran");

      setState(() {
        dist = _newDist;
        newPosition = position;
        print('New State Ran');
      });
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getRealTimeLocation();
//    print('Init State Ran');
  }

  @override
  Widget build(BuildContext context) {
    if(dist == null) {
      return Scaffold(
        body: SpinKitRotatingCircle(
          color: Colors.white,
          size: 50.0,
        ),
        backgroundColor: Colors.blue,
      );
    }

    else {

      if (dist < 500) {
        appBarColor = Colors.red[900];
        bgColor = Colors.red;
        title = 'Close to Accident  Zones';
      } else if (dist < 1250) {
        appBarColor = Colors.orange[900];
        bgColor = Colors.orange;
        title = 'Away from Accident Zones';
      } else {
        appBarColor = Colors.green[900];
        bgColor = Colors.green;
        title = 'Safe Zone';
      }

      return Scaffold(
        appBar: AppBar(
          title: Text(title),
          centerTitle: true,
          backgroundColor: appBarColor,
        ),
        backgroundColor: bgColor,
        body: Align(
          alignment: Alignment.center,
          child: Column(
//            mainAxisAlignment: MainAxisAlignment.start,
//            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 200,
              ),
              Center(
                child: IconButton(
                  icon: Icon(
                    Icons.warning,
                    size: 60,
                    color: appBarColor,
                  ),
                  onPressed: () {},
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Center(
                        child: Text('You are ',
                        style: TextStyle(
                          letterSpacing: 1.5,
                        ),),
                      ),
                      Row(
                        children: <Widget>[
                          Center(
                            child: Text('${dist.round()} meters ',
                              style: TextStyle(
                                letterSpacing: 1.5,
                              ),),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Center(
                            child: Text('from the nearest Accident Zone.',
                              style: TextStyle(
                                letterSpacing: 1.5,
                              ),),
                          ),
                        ],
                      ),
                    ],
                  )),
            ],
          ),
        ),
      );
    }
  }
}
