import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Accident Zone Detector'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.warning), onPressed: () {
            Navigator.pushNamed(context, 'Locations');
          })
        ],
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 175,
          ),
          Center(
            child: IconButton(
              icon: Icon(Icons.location_on),
              color: Colors.green[600],
              onPressed: () {
                Navigator.pushNamed(context, 'Alert');
              },
            ),
          ),
          Text('Click Here to Check Your Status'),
        ],
      ),
    );
  }
}
