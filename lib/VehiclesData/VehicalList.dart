

import 'package:flutter/material.dart';
import 'package:fluttertraffic/VehiclesData/AddVehicle.dart';
import 'package:fluttertraffic/VehiclesData/Vehicle.dart';
import 'package:fluttertraffic/VehiclesData/VehicleItem.dart';

class VehicleList extends StatefulWidget{

  VehicleList ({Key key}) : super(key : key);

  _VehiclaList createState() => _VehiclaList();

}

class _VehiclaList extends State<VehicleList>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text("Vehicles"),
        backgroundColor: Colors.orange[900],
      ),
      body: new Scaffold(
        body: new Container(
          color: Colors.white,
          child: new CustomScrollView(
            scrollDirection: Axis.vertical,
            shrinkWrap: false,
            slivers: <Widget>[
              new SliverPadding(
                padding: const EdgeInsets.symmetric(vertical: 24.0),
                sliver: new SliverList(
                  delegate: new SliverChildBuilderDelegate(
                        (context, index) => new VehicleItem(vehicles[index]),
                    childCount: vehicles.length,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new AddVehicle()));
        },
      ),
    );
  }

}