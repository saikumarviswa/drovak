

import 'package:flutter/material.dart';

class SingleVehicle extends StatefulWidget{

  SingleVehicle({Key key}) : super(key : key);

  _SingleVehicle createState() => _SingleVehicle();

}

class _SingleVehicle extends State<SingleVehicle>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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
                Expanded(
                    child: Container(
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
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.all(30),
                          child: Column(
                            children: <Widget>[

                            ],
                          ),
                      ),
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