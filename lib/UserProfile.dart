

import 'package:flutter/material.dart';
import 'package:fluttertraffic/AddYourVehicle.dart';

class UserProfile extends StatefulWidget{

  UserProfile({Key key}) : super(key : key);

  _UserProfile createState() => _UserProfile();

}

class _UserProfile extends State<UserProfile>{

  @override
  Widget build(BuildContext context) {

    Size screenSize = MediaQuery.of(context).size;

    return new Scaffold(
      appBar: AppBar(
        title: Text("profile"),
        backgroundColor: Colors.orange[900],
      ),
      body: Stack(
        children: <Widget>[
          Container(
          height: screenSize.height / 3.5,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/img/bg_wall.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: screenSize.height / 8.8),
                  InkWell(
                    onTap:(){

                    },
                    child: Center(
                      child: Container(
                        width: 140.0,
                        height: 140.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: new NetworkImage("https://randomuser.me/api/portraits/women/44.jpg"),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(80.0),
                          border: Border.all(
                            color: Colors.white,
                            width: 2.0,
                          ),
                        ),

                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text("Name",style: TextStyle(fontSize: 20,color: Colors.black),),
                ],
              ),
            ),
          ),
        ],
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