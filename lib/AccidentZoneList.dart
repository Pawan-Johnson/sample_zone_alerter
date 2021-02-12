import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';


class Location {
  double latitude;
  double longitude;
  String locationName;

  Location({this.latitude,this.longitude,this.locationName : null});

}

void addingLocations(List <Location> locations) {
  locations.add(
      Location(latitude: 0, longitude: 0, locationName: 'Center of World'));
  locations.add(Location(latitude: 10.3312716,
      longitude: 76.3125631,
      locationName: 'Pawan\'s Home'));
  locations.add(Location(latitude: 11.287344,
      longitude: 75.824430,
      locationName: 'Leo\'s Home'));
}

Future<Location> getClosestLocation(List <Location> locations , Location position) async{
  double minDist;
  int index =0;
  int max = locations.length;
  minDist = await Geolocator()
      .distanceBetween(position.latitude, position.longitude,locations[0].latitude , locations[0].longitude);

  for( int i= 1 ; i < max ; i++)
    {
      double dist = await Geolocator()
          .distanceBetween(position.latitude, position.longitude,locations[i].latitude , locations[i].longitude);

      if(dist < minDist)
        {
          minDist = dist;
          index = i;
        }
    }

  return locations[index];

}

Widget listViewLocations(List<Location> locations)
{
  return ListView.builder(
    itemCount: locations.length,
      itemBuilder: ( BuildContext context , int index){
      return ListTile(
        leading: Icon(Icons.home),
        title: Text("${locations[index].locationName}"),
        trailing: Text("(${locations[index].latitude.round()} , ${locations[index].longitude.round()})"),
      );
      });
}