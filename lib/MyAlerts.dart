

import 'package:flutter/material.dart';

class MyAlerts extends StatefulWidget{

  MyAlerts({Key key}) : super(key : key);

  _MyAlerts createState() => _MyAlerts();

}

class _MyAlerts extends State<MyAlerts>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text("Notifications"),
        backgroundColor: Colors.orange[900],
      ),
    );
  }

}