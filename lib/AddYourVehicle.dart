
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

import 'FadeAnimation.dart';

class AddYourVehicle extends StatefulWidget{

  AddYourVehicle({Key key}) : super(key : key);

  _AddYourVehicle createState() => _AddYourVehicle();

}

class _AddYourVehicle extends State<AddYourVehicle>{

  File imageFile;
  String dropdownValue = 'One';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text("Add Your Vehicle"),
        backgroundColor: Colors.orange[900],

      ),
      body: Container(
        child: Center(
          child: Column(
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
                          SizedBox(height: 10),
                          FadeAnimation(1.3,
                              Container(
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
                                        decoration: InputDecoration(
                                            hintText: "Vehicle Number",
                                            hintStyle: TextStyle(color: Colors.grey),
                                            border: InputBorder.none
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                          ),
                          SizedBox(height: 10),
                          FadeAnimation(1.6,
                              Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [BoxShadow(
                                          color: Color.fromRGBO(225, 95, 27, .3),
                                          blurRadius: 20,
                                          offset: Offset(0, 10)
                                      )]
                                  ),
                                  child: Row(
                                    children: <Widget>[
                                      new Text("VehicleType" ,style: TextStyle(color: Colors.black,fontSize: 15),),
                                      SizedBox(width: 20,),
                                      DropdownButton<String>(
                                        value: dropdownValue,
                                        icon: Icon(Icons.keyboard_arrow_down),
                                        iconSize: 24,
                                        elevation: 16,
                                          onChanged: (String newValue) {
                                            setState(() {
                                              dropdownValue = newValue;
                                            });
                                          },
                                          items: <String>['One', 'Two', 'Free', 'Four']
                                              .map<DropdownMenuItem<String>>((String value) {
                                            return DropdownMenuItem<String>(
                                              value: value,
                                              child: Text(value),
                                            );
                                          }).toList()
                                      ),
                                    ],
                                  ),
                                  /*child:DropdownButton<String>(
                                    value: dropdownValue,
                                    icon: Icon(Icons.keyboard_arrow_down),
                                    iconSize: 24,
                                    elevation: 16,
                                    *//*style: TextStyle(color: Colors.deepPurple),*//*
                                    *//*underline: Container(
                                      height: 2,
                                      color: Colors.deepPurpleAccent,
                                    ),*//*
                                    onChanged: (String newValue) {
                                      setState(() {
                                        dropdownValue = newValue;
                                      });
                                    },
                                    items: <String>['One', 'Two', 'Free', 'Four']
                                        .map<DropdownMenuItem<String>>((String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(),
                                  )*/
                                /*child: Row(
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          border: Border(bottom: BorderSide(color: Colors.grey[200]))
                                      ),
                                      child: TextField(
                                        decoration: InputDecoration(
                                            hintText: "Vehicle Type",
                                            hintStyle: TextStyle(color: Colors.grey),
                                            border: InputBorder.none
                                        ),
                                      ),
                                    ),
                                  ],
                                ),*/
                              )
                          ),
                          SizedBox(height: 10,),
                          FadeAnimation(1.9,
                              Container(
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
                                        decoration: InputDecoration(
                                            hintText: "Model",
                                            hintStyle: TextStyle(color: Colors.grey),
                                            border: InputBorder.none
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                          ),
                          SizedBox(height: 10,),
                          FadeAnimation(2.2,
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [BoxShadow(
                                        color: Color.fromRGBO(225, 95, 27, .3),
                                        blurRadius: 20,
                                        offset: Offset(0, 10)
                                    )]
                                ),
                                child: Row(
                                  children: <Widget>[
                                    new Text("Vehicle Make" ,style: TextStyle(color: Colors.black,fontSize: 15),),
                                    SizedBox(width: 20,),
                                    DropdownButton<String>(
                                        value: dropdownValue,
                                        icon: Icon(Icons.keyboard_arrow_down),
                                        iconSize: 24,
                                        elevation: 16,
                                        onChanged: (String newValue) {
                                          setState(() {
                                            dropdownValue = newValue;
                                          });
                                        },
                                        items: <String>['One', 'Two', 'Free', 'Four']
                                            .map<DropdownMenuItem<String>>((String value) {
                                          return DropdownMenuItem<String>(
                                            value: value,
                                            child: Text(value),
                                          );
                                        }).toList()
                                    ),
                                  ],
                                ),
                              )
                          ),
                          SizedBox(height: 10,),
                          FadeAnimation(2.5,
                              Container(
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
                                        decoration: InputDecoration(
                                            hintText: "RCN Number",
                                            hintStyle: TextStyle(color: Colors.grey),
                                            border: InputBorder.none
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                          ),
                          SizedBox(height: 10,),
                          FadeAnimation(2.8,
                              Container(
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
                                        decoration: InputDecoration(
                                            hintText: "ODO Meter",
                                            hintStyle: TextStyle(color: Colors.grey),
                                            border: InputBorder.none
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                          ),
                          SizedBox(height: 10,),
                          FadeAnimation(3.1,
                              Container(
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
                                        decoration: InputDecoration(
                                            hintText: "State",
                                            hintStyle: TextStyle(color: Colors.grey),
                                            border: InputBorder.none
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                          ),
                          SizedBox(height: 10,),
                          FadeAnimation(3.4,
                              Container(
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
                                        decoration: InputDecoration(
                                            hintText: "Year",
                                            hintStyle: TextStyle(color: Colors.grey),
                                            border: InputBorder.none
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                          ),
                          SizedBox(height: 10,),
                          FadeAnimation(3.7,
                              Container(
                                width: 350,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [BoxShadow(
                                        color: Color.fromRGBO(225, 95, 27, .3),
                                        blurRadius: 20,
                                        offset: Offset(0, 10)
                                    )]
                                ),
                                child: InkWell(
                                  onTap: (){
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return AlertDialog(
                                          title: new Text("Picker"),
                                          content: new Text("Select image picker type."),
                                          actions: <Widget>[
                                            new FlatButton(
                                              child: new Text("Camera"),
                                              onPressed: () {
                                                _getImage(1);
                                                Navigator.pop(context);
                                              },
                                            ),
                                            new FlatButton(
                                              child: new Text("Gallery"),
                                              onPressed: () {
                                                _getImage(2);
                                                Navigator.pop(context);
                                              },
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  },
                                  child: Center(
                                    child: Column(
                                        children: <Widget>[
                                          imageFile != null
                                              ?  Center(child : new Image(image: new FileImage(imageFile),))
                                              : Center(child : new Icon(Icons.add_a_photo,size: 120,color: Colors.black,)),
                                        ]
                                    ),

                                  ),
                                ),
                              )
                          ),
                          SizedBox(height: 10,),
                          FadeAnimation(4,
                              Card(
                              margin: EdgeInsets.all(10.0),
                              color: Colors.cyan,
                              child: InkWell(
                                onTap: (){

                                },
                                splashColor: Colors.green,
                                child: Center(
                                  heightFactor:2,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Text("Submit",style: new TextStyle(fontSize: 17.0,color: Colors.white),),

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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future _getImage(int type) async {

    var image = await ImagePicker.pickImage(
        source: type == 1 ? ImageSource.camera : ImageSource.gallery,
        imageQuality: 50
    );

    File croppedFile = await ImageCropper.cropImage(
      sourcePath: image.path,
      maxWidth: 600,
      maxHeight: 600,
    );

    /*var compressedFile = await FlutterImageCompress.compressWithFile(
      croppedFile.path,
      croppedFile.path,
      quality: 50,
    );*/

    setState(() {
      imageFile = croppedFile;
    });
  }

}