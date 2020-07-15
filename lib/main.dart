import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:fluttertraffic/LogInWithOTP.dart';
import 'package:fluttertraffic/RegisterUser.dart';
import 'package:fluttertraffic/common/rest.service.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'FadeAnimation.dart';
import 'Home.dart';

void main() => runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    )
);

class LoginPage extends StatelessWidget {

  TextEditingController userNameController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 80,),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  FadeAnimation(1, Text("Login", style: TextStyle(color: Colors.white, fontSize: 40),)),
                  SizedBox(height: 10,),
                  FadeAnimation(1.3, Text("Welcome Back", style: TextStyle(color: Colors.white, fontSize: 18),)),
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(60), topRight: Radius.circular(60))
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(30),
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 60,),
                        FadeAnimation(1.4, Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [BoxShadow(
                                  color: Color.fromRGBO(225, 95, 27, .3),
                                  blurRadius: 20,
                                  offset: Offset(0, 10)
                              )]
                          ),
                          child: Column(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(color: Colors.grey[200]))
                                ),
                                child: TextField(
                                  controller: userNameController,
                                  decoration: InputDecoration(
                                      hintText: "User Name",
                                      icon: Icon(Icons.call),
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(color: Colors.grey[200]))
                                ),
                                child: TextField(
                                  controller: passwordController,
                                  decoration: InputDecoration(
                                      hintText: "Password",
                                      icon: Icon(Icons.lock),
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                        ),
                        SizedBox(height: 40,),
                        FadeAnimation(1.5, Text("Forgot Password?", style: TextStyle(color: Colors.grey),)),
                        SizedBox(height: 40,),
                        new InkWell(
                          child: FadeAnimation(1.6,
                              Container(
                                  height: 50,
                                  margin: EdgeInsets.symmetric(horizontal: 50),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Colors.orange[900]
                                  ),
                                  child: InkWell(
                                    onTap: (){
                                      FlutterToast.showToast(
                                          msg: "This is Center Short Toast",
                                          toastLength: Toast.LENGTH_SHORT,
                                          gravity: ToastGravity.BOTTOM,
                                          timeInSecForIosWeb: 1,
                                          backgroundColor: Colors.red,
                                          textColor: Colors.white,
                                          fontSize: 16.0
                                      );
                                      RestService restService = new RestService();
                                      restService.getUser(userNameController.text, passwordController.text).then((onValue) async {
                                        print("@@@@@@@@@@@@@@@@@@@@@@@@ $onValue");
                                        if(onValue != null){
                                          FlutterToast.showToast(
                                              msg: onValue.toString(),
                                              toastLength: Toast.LENGTH_SHORT,
                                              gravity: ToastGravity.BOTTOM,
                                              timeInSecForIosWeb: 1,
                                              backgroundColor: Colors.red,
                                              textColor: Colors.white,
                                              fontSize: 16.0
                                          );
                                          SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
                                          sharedPreferences.setString("userName", onValue.name);
                                          print("ZZZZZZZZZZZZZZZ ${onValue.emailId}");
                                          sharedPreferences.setString("mobileNo", onValue.mobileNo);
                                          sharedPreferences.setString("emailId", onValue.emailId);
                                          Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new HomePage()));
                                        }else{

                                          FlutterToast.showToast(
                                              msg: "Faild",
                                              toastLength: Toast.LENGTH_SHORT,
                                              gravity: ToastGravity.BOTTOM,
                                              timeInSecForIosWeb: 1,
                                              backgroundColor: Colors.red,
                                              textColor: Colors.white,
                                              fontSize: 16.0
                                          );

                                        }
                                      })/*.catchError((onError){
                                        print(onError.toString());

                                        FlutterToast.showToast(
                                            msg: onError.toString(),
                                            toastLength: Toast.LENGTH_SHORT,
                                            gravity: ToastGravity.BOTTOM,
                                            timeInSecForIosWeb: 1,
                                            backgroundColor: Colors.red,
                                            textColor: Colors.white,
                                            fontSize: 16.0
                                        );

                                      })*/;

                                      /*Route route = MaterialPageRoute(builder: (context) => HomePage());
                                      Navigator.pushReplacement(context, route);*/
                                      //Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new HomePage()));
                                      //Navigator.pushReplacement(context, new MaterialPageRoute(builder: (BuildContext context) => new HomePage()));
                                      },
                                      child: Center(
                                        child: Text("Login", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                                      )
                                  ),
                              )
                          ),

                        ),
                        SizedBox(height: 15,),
                        new InkWell(
                          child: FadeAnimation(1.9,
                              Container(
                                height: 50,
                                margin: EdgeInsets.symmetric(horizontal: 50),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.orange[900]
                                ),
                                child: InkWell(
                                    onTap: (){
                                      FlutterToast.showToast(
                                          msg: "This is Center Short Toast",
                                          toastLength: Toast.LENGTH_SHORT,
                                          gravity: ToastGravity.BOTTOM,
                                          timeInSecForIosWeb: 1,
                                          backgroundColor: Colors.red,
                                          textColor: Colors.white,
                                          fontSize: 16.0
                                      );
                                      /*Route route = MaterialPageRoute(builder: (context) => HomePage());
                                      Navigator.pushReplacement(context, route);*/
                                      Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new LoginWithOTP()));
                                    },
                                    child: Center(
                                      child: Text("LogIn With OTP", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                                    )
                                ),
                              )
                          ),

                        ),

                        SizedBox(height: 15,),

                        Container(
                          child: Center(
                            child: Row(
                              children: <Widget>[
                                FadeAnimation(1.7,
                                    InkWell(
                                      onTap: (){
                                        //Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new RegisterUser()));
                                      },
                                      child: Container(
                                        child: Text("New User?", style: TextStyle(color: Colors.grey),),
                                      ),
                                    )
                                ),
                                FadeAnimation(1.7,
                                    InkWell(
                                      onTap: (){
                                        Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new RegisterUser()));
                                      },
                                      child: Container(
                                        child: Text("Register", style: TextStyle(color: Colors.blue,),),
                                      ),
                                    )
                                ),

                              ],
                            ),
                          ),
                        ),

                        /*SizedBox(height: 30,),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: FadeAnimation(1.8, Container(
                                height: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.blue
                                ),
                                child: Center(
                                  child: Text("Facebook", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                                ),
                              )),
                            ),
                            SizedBox(width: 30,),
                            Expanded(
                              child: FadeAnimation(1.9, Container(
                                height: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.black
                                ),
                                child: Center(
                                  child: Text("Github", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                                ),
                              )),
                            )
                          ],
                        )*/
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}