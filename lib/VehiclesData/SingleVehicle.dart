

import 'package:flutter/material.dart';
import 'package:fluttertraffic/FadeAnimation.dart';
import 'package:fluttertraffic/VehiclesData/Vehicle.dart';
import 'package:fluttertraffic/models/VehicleDTO.dart';

class SingleVehicle extends StatefulWidget{

  VehicleDTO vehicle = new VehicleDTO();
  SingleVehicle({Key key, @required this.vehicle}) : super(key : key);

  _SingleVehicle createState() => _SingleVehicle(vehicle);

}

class _SingleVehicle extends State<SingleVehicle>{

  VehicleDTO vehicle = new VehicleDTO();
  _SingleVehicle(VehicleDTO vehicle){

    this.vehicle = vehicle;

  }


  @override
  Widget build(BuildContext context) {

    print(vehicle.model);

    return new Scaffold(
      appBar: AppBar(
        title: Text("Vehicle"),
        backgroundColor: Colors.orange[900],
      ),
      body: new Scaffold(
        body: Container(
            width: double.infinity,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Image(
                    image: new AssetImage(vehicle.model),
                  ),
                  SizedBox(height: 5,),
                  FadeAnimation(1,
                    new Container(
                      height: 35,
                      width: double.infinity,
                      child: Text(vehicle.model,style: TextStyle(color:Colors.black,fontSize: 25),),
                    )
                  ),
                  SizedBox(height: 5,),
                  FadeAnimation(1.3,
                      new Container(
                        height: 35,
                        width: double.infinity,
                        child: Text(vehicle.regNumber,style: TextStyle(color:Colors.black,fontSize: 20),),
                      )
                  ),
                  SizedBox(height: 5,),
                  FadeAnimation(1.6,
                      new Container(
                        height: 35,
                        width: double.infinity,
                        child: Text(vehicle.state,style: TextStyle(color:Colors.black,fontSize: 20),),
                      )
                  )

                ],
            ),
        ),
      ),
    );
  }

}