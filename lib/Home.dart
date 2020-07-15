

import 'dart:isolate';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertraffic/AboutUs.dart';
import 'package:fluttertraffic/FadeAnimation.dart';
import 'package:fluttertraffic/LogInWithOTP.dart';
import 'package:fluttertraffic/ReceivedPosts.dart';
import 'package:fluttertraffic/UserProfile.dart';
import 'package:fluttertraffic/VehiclesData/VehicalList.dart';
import 'package:fluttertraffic/YourPosts.dart';

import 'MyAlerts.dart';
import 'main.dart';

class HomePage extends StatefulWidget{

  HomePage({Key key}) : super(key: key);

  _HomePage createState() => _HomePage();

}

class _HomePage extends State<HomePage>{

  String tok;
  FirebaseMessaging firebaseMessaging;

  @override
  void initstate(){
    super.initState();

    firebaseMessaging.configure(
      onMessage: (Map<String, dynamic> message) async {
        setState(() {
          // _messageText = "Push Messaging message: $message";
        });
        /*print("onMessage: $message");*/

        print("onMessage: $message");
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            content: ListTile(
              title: Text(message['notification']['title']),
              subtitle: Text(message['notification']['body']),
            ),
            actions: <Widget>[
              FlatButton(
                child: Text('Ok'),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ],
          ),
        );
      },
      onLaunch: (Map<String, dynamic> message) async {
        setState(() {
          //_messageText = "Push Messaging message: $message";
        });
        print("onLaunch: $message");
      },
      onResume: (Map<String, dynamic> message) async {
        setState(() {
          //_messageText = "Push Messaging message: $message";
        });
        print("onResume: $message");
      },
    );
    firebaseMessaging.requestNotificationPermissions(
        const IosNotificationSettings(sound: true, badge: true, alert: true));
    firebaseMessaging.onIosSettingsRegistered
        .listen((IosNotificationSettings settings) {
      print("Settings registered: $settings");
    });
    firebaseMessaging.getToken().then((String token) {
      assert(token != null);
      setState(() {
        print(token);
        tok = token;
      });

    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new WillPopScope(
        child: new Scaffold(
          body: new Scaffold(
              appBar: AppBar(
                title: Text("Home"),
                backgroundColor:   Colors.orange[900],
              ),
              drawer: new Drawer(
                child: new ListView(
                  children: <Widget>[
                    new UserAccountsDrawerHeader(
                        accountName: new Text("Sai Kumar"),
                        accountEmail: new Text("saikumar@gmail.com"),
                        currentAccountPicture: new GestureDetector(
                          onTap: (){
                            Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new UserProfile()));
                          },
                          child: new CircleAvatar(
                              backgroundImage: new NetworkImage("https://randomuser.me/api/portraits/women/44.jpg")
                          ),
                        ),
                        otherAccountsPictures: <Widget>[
                          new GestureDetector(
                            onTap: () => print("this is the other user"),
                            /* child: new CircleAvatar(
                              backgroundImage: new NetworkImage(otherProfilePicture)
                          ),*/
                          ),
                        ],
                        decoration: new BoxDecoration(
                            image: new DecorationImage(
                                fit: BoxFit.fill,
                                image: new NetworkImage("https://orig00.deviantart.net/20eb/f/2015/030/6/f/_minflat__dark_material_design_wallpaper__4k__by_dakoder-d8fjqzu.jpg")
                            )
                        )
                    ),
                    new ListTile(
                        title: new Text("Profile"),
                        trailing: new Icon(Icons.person),
                        onTap: () {
                          //Navigator.of(context).pop();
                          Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new UserProfile()));
                        }
                    ),
                    new ListTile(
                        title: new Text("Vehicles"),
                        trailing: new Icon(Icons.directions_car),
                        onTap: () {
                          //Navigator.of(context).pop();
                          Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new VehicleList()));
                        }
                    ),
                    new ListTile(
                        title: new Text("Alerts"),
                        trailing: new Icon(Icons.notifications),
                        onTap: () {
                          //Navigator.of(context).pop();
                          Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new MyAlerts()));
                        }
                    ),new ListTile(
                        title: new Text("Reports"),
                        trailing: new Icon(Icons.receipt),
                        onTap: () {
                          //Navigator.of(context).pop();
                          Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new YourPosts()));
                        }
                    ),
                    new ListTile(
                        title: new Text("My Driving"),
                        trailing: new Icon(Icons.arrow_downward),
                        onTap: () {
                          //Navigator.of(context).pop();
                          Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new ReceivedPosts()));
                        }
                    ),
                    /*new ListTile(
                        title: new Text("About Us"),
                        trailing: new Icon(Icons.people),
                        onTap: () {

                          Navigator.of(context).pop();
                          //Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new OtherPage("Second Page")));
                        }
                    ),*/
                    new Divider(),
                    new ListTile(
                      title: new Text("LogOut"),
                      trailing: new Icon(Icons.cancel),
                      onTap: () {
                        Route route = MaterialPageRoute(builder: (context) => LoginPage());
                        Navigator.pushReplacement(context, route);
                      }
                    )
                  ],
                ),
              ),
            body: new Container(
              padding: EdgeInsets.all(40.0),
              child: GridView.count(crossAxisCount: 2,
                children: <Widget>[


                  new FadeAnimation(1.4,
                      Container(
                        decoration: BoxDecoration(
                          /*color: Colors.white,
                          borderRadius: BorderRadius.circular(10),*/
                            boxShadow: [BoxShadow(
                                color: Colors.grey,
                                blurRadius: 20,
                                offset: Offset(0, 10)
                            )]
                        ),
                        child:  Card(
                          margin: EdgeInsets.all(10.0),
                          color: Colors.white,
                          child: InkWell(
                            onTap: (){
                              Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new AboutUs()));
                            },
                            splashColor: Colors.green,
                            child: Center(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Image.asset('assets/aboutus.png',width: 80,height: 80,),
                                  Text("About Us",style: new TextStyle(fontSize: 17.0),)

                                ],
                              ),
                            ),

                          ),
                        ),

                      )

                  ),

                  new FadeAnimation(1.4,
                      Container(
                        decoration: BoxDecoration(
                          /*color: Colors.white,
                          borderRadius: BorderRadius.circular(10),*/
                            boxShadow: [BoxShadow(
                                color: Colors.grey,
                                blurRadius: 20,
                                offset: Offset(0, 10)
                            )]
                        ),
                        child:  Card(
                          margin: EdgeInsets.all(10.0),
                          color: Colors.cyan,
                          child: InkWell(
                            onTap: (){

                              Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new VehicleList()));
                            },
                            splashColor: Colors.green,
                            child: Center(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Icon(Icons.directions_car,size: 70,color: Colors.white,),
                                  Text("Vehicals",style: new TextStyle(fontSize: 17.0),)

                                ],
                              ),
                            ),

                          ),
                        ),

                      )

                  ),
                ],

              ),

            ),



          ),

        ),


    );
  }

}