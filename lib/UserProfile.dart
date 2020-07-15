

import 'package:flutter/material.dart';
import 'package:fluttertraffic/AddYourVehicle.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'VehiclesData/Vehicle.dart';
import 'VehiclesData/VehicleItem.dart';

class UserProfile extends StatefulWidget{

  UserProfile({Key key}) : super(key : key);

  _UserProfile createState() => _UserProfile();

}

class _UserProfile extends State<UserProfile>{

  SharedPreferences sharedPreferences;
  String userName;
  String mobileNumber;
  String emailId;

  @override
  void initState(){
    super.initState();
    _loadCounter();
  }

  _loadCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {

      userName = (prefs.getString('userName') ?? null);
      mobileNumber = (prefs.getString('mobileNo') ?? null);
      emailId = (prefs.getString('emailId') ?? null);
    });
  }

  @override
  Widget build(BuildContext context) {

    Size screenSize = MediaQuery.of(context).size;
    print("!!!!!!!!!!!!!!!!!!!!!!!!!!! $userName , $mobileNumber , $emailId");

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
                  Text(userName,style: TextStyle(fontSize: 20,color: Colors.black),),
                  SizedBox(height: 20,),
                  Text(mobileNumber,style: TextStyle(fontSize: 20,color: Colors.black),),
                  SizedBox(height: 20,),
                  Text(emailId,style: TextStyle(fontSize: 20,color: Colors.black),),

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