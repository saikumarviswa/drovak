


import 'package:flutter/material.dart';
import 'package:fluttertraffic/VehiclesData/AddVehicle.dart';
import 'package:fluttertraffic/models/VehicleDTO.dart';

import 'VehiclesData/Vehicle.dart';
import 'VehiclesData/VehicleItem.dart';

class YourPosts extends StatefulWidget{

  YourPosts({Key key}) : super(key : key);

  _YourPosts createState() => _YourPosts();

}

class _YourPosts extends State<YourPosts>{

  List<VehicleDTO> vehList = new List();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text("Reports"),
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
                        (context, index) => new VehicleItem(vehList[index]),
                    childCount: vehList.length,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: new FloatingActionButton(
          child: new Icon(Icons.add),
          onPressed: (){
            Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new AddVehicle()));
          }
      ),
    );
  }

}