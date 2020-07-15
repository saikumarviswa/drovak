


import 'package:flutter/material.dart';
import 'package:fluttertraffic/models/VehicleDTO.dart';

import 'VehiclesData/Vehicle.dart';
import 'VehiclesData/VehicleItem.dart';

class ReceivedPosts extends StatefulWidget{

  ReceivedPosts({Key key}) : super(key : key);

  _ReceivedPosts createState() => _ReceivedPosts();

}

class _ReceivedPosts extends State<ReceivedPosts>{

  List<VehicleDTO> vehicleDTO = new List();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text("My Driving"),
        backgroundColor: Colors.orange[900],
      ),

      body: new Scaffold(
        body: new Container(
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  colors: [
                    Colors.orange[900],
                    Colors.orange[800],
                    Colors.orange[400]
                  ]
              )
          ),
          child: new CustomScrollView(
            scrollDirection: Axis.vertical,
            shrinkWrap: false,
            slivers: <Widget>[
              new SliverPadding(
                padding: const EdgeInsets.symmetric(vertical: 24.0),
                sliver: new SliverList(
                  delegate: new SliverChildBuilderDelegate(
                        (context, index) => new VehicleItem(vehicleDTO[index]),
                    childCount: vehicleDTO.length,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}