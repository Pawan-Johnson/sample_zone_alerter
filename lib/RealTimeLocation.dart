import 'dart:async';

import 'package:geolocator/geolocator.dart';
import 'package:flutter/material.dart';

class RealTimeLocation extends StatefulWidget {
  @override
  _RealTimeLocationState createState() => _RealTimeLocationState();
}

class _RealTimeLocationState extends State<RealTimeLocation> {
  List< Position> _positionData;
  Position _currentPosition;

  void _getLocation() async{
    Geolocator geolocator = Geolocator();
    Position _newPosition = await geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    setState(() {
    _currentPosition = _newPosition;
    //_positionData.add(_currentPosition);
    });
  }

  void _getRealTimeLocation() async{
    Geolocator geolocator = Geolocator();
    LocationOptions locationOptions = LocationOptions(accuracy: LocationAccuracy.high,);

    Stream<Position> positionStream = geolocator.getPositionStream(locationOptions);
    positionStream.listen((Position position) async{
      double dist;
      dist = await Geolocator()
          .distanceBetween(position.latitude, position.longitude,10.3310575 , 76.3129116);
      Navigator.pushReplacementNamed(context, 'Alert', arguments: {'distance': dist});
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //_getLocation();
    _getRealTimeLocation();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: _currentPosition == null ? Text('Wait') : Text('${_currentPosition.longitude} , ${_currentPosition.latitude}')
    );
  }
}
