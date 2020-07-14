


import 'package:flutter/material.dart';

class ReceivedPosts extends StatefulWidget{

  ReceivedPosts({Key key}) : super(key : key);

  _ReceivedPosts createState() => _ReceivedPosts();

}

class _ReceivedPosts extends State<ReceivedPosts>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text("My Driving"),
        backgroundColor: Colors.orange[900],
      ),
    );
  }

}