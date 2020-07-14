


import 'package:flutter/material.dart';

class YourPosts extends StatefulWidget{

  YourPosts({Key key}) : super(key : key);

  _YourPosts createState() => _YourPosts();

}

class _YourPosts extends State<YourPosts>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text("Posts"),
        backgroundColor: Colors.orange[900],
      ),
    );
  }

}