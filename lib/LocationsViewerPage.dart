import 'package:flutter/material.dart';
import 'package:sample_zone_alerter/AccidentZoneList.dart';

class Locations extends StatefulWidget {
  @override
  _LocationsState createState() => _LocationsState();
}

class _LocationsState extends State<Locations> {
  List <Location> locations = List<Location>();
  @override
  
  void initState()
  {
    super.initState();
    addingLocations(locations);
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Currently Available Accident Zones"),
        centerTitle: true,
      ),
        body: listViewLocations(locations));
  }
}


