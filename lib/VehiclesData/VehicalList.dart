

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:fluttertraffic/AddYourVehicle.dart';
import 'package:fluttertraffic/VehiclesData/AddVehicle.dart';
import 'package:fluttertraffic/VehiclesData/Vehicle.dart';
import 'package:fluttertraffic/VehiclesData/VehicleItem.dart';
import 'package:fluttertraffic/common/rest.service.dart';
import 'package:fluttertraffic/models/VehicleDTO.dart';

class VehicleList extends StatefulWidget{

  VehicleList ({Key key}) : super(key : key);

  _VehiclaList createState() => _VehiclaList();

}

class _VehiclaList extends State<VehicleList>{
  List<VehicleDTO> vehList = new List();
  @override
  void initState(){
    super.initState();

  }

  @override
  Widget build(BuildContext context) {

    RestService restService = new RestService();
    restService.vehiclesGet().then((data){

      if(data != null){
        vehList = data;
        print(vehList.length);
        //FlutterToast.showToast(msg: data.toString());
      }else{
        FlutterToast.showToast(msg: "Empty");
      }

    });

    return new Scaffold(
      appBar: AppBar(
        title: Text("Vehicles"),
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
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new AddYourVehicle()));
        },
      ),
    );
  }

}