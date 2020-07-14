
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:like_button/like_button.dart';

import '../FadeAnimation.dart';

class AddVehicle extends StatefulWidget{

  AddVehicle({Key key}) : super(key : key);

  _AddVehicle createState() => _AddVehicle();

}

class _AddVehicle extends State<AddVehicle>{

  File imageFile;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text("Add Complient"),
        backgroundColor: Colors.orange[900],
      ),
      body: Container(
        width: double.infinity,
        /*decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                colors: [
                  Colors.orange[900],
                  Colors.orange[800],
                  Colors.orange[400]
                ]
            )
        ),*/
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
                        SizedBox(height: 20,),
                        FadeAnimation(1,
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
                                          hintText: "Vehicle number",
                                          hintStyle: TextStyle(color: Colors.grey),
                                          border: InputBorder.none
                                      ),
                                    ),
                                  ),
                                  /*Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        border: Border(bottom: BorderSide(color: Colors.grey[200]))
                                    ),
                                    child: TextField(
                                      decoration: InputDecoration(
                                          hintText: "VehicleType",
                                          hintStyle: TextStyle(color: Colors.grey),
                                          border: InputBorder.none
                                      ),
                                    ),
                                  ),*/
                                ],
                              ),
                            )
                        ),
                        /*SizedBox(height: 20),
                        FadeAnimation(1.3,
                            Container(
                              child:Text("Description",style: TextStyle(color: Colors.white,fontSize: 20.0),)
                          ),
                        ),*/
                        SizedBox(height: 20),
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
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        border: Border(bottom: BorderSide(color: Colors.grey[200]))
                                    ),
                                    child: TextField(
                                      decoration: InputDecoration(
                                          hintText: "Comment",
                                          hintStyle: TextStyle(color: Colors.grey),
                                          border: InputBorder.none
                                      ),
                                    ),
                                  ),
                                  /*Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        border: Border(bottom: BorderSide(color: Colors.grey[200]))
                                    ),
                                    child: TextField(
                                      decoration: InputDecoration(
                                          hintText: "Description",
                                          hintStyle: TextStyle(color: Colors.grey),
                                          border: InputBorder.none
                                      ),
                                    ),
                                  ),*/
                                ],
                              ),
                            )
                        ),
                        /*SizedBox(height: 20),
                        FadeAnimation(1.9,
                          Container(
                              child:Text("Location",style: TextStyle(color: Colors.white,fontSize: 20.0),)
                          ),
                        ),*/
                        /*SizedBox(height: 20),
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
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        border: Border(bottom: BorderSide(color: Colors.grey[200]))
                                    ),
                                    child: TextField(
                                      decoration: InputDecoration(
                                          hintText: "Country",
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
                                      decoration: InputDecoration(
                                          hintText: "City",
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
                                      decoration: InputDecoration(
                                          hintText: "Location",
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
                                      decoration: InputDecoration(
                                          hintText: "State",
                                          hintStyle: TextStyle(color: Colors.grey),
                                          border: InputBorder.none
                                      ),
                                    ),
                                  ),
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
                                            Icon(Icons.gps_fixed,size: 20,color: Colors.white,),
                                            SizedBox(width: 10,),
                                            Text("Use Current Location",style: new TextStyle(fontSize: 17.0,color: Colors.white),),

                                          ],
                                        ),
                                      ),

                                    ),
                                  ),
                                ],
                              ),
                            )
                        ),*/
                        //SizedBox(height: 20,),
                       /* FadeAnimation(2.2,
                          Center(

                            child: Row(
                              children: <Widget>[
                                LikeButton(
                                  size: 60,
                                  circleColor:
                                  CircleColor(start: Color(0xff00ddff), end: Color(0xff0099cc)),
                                  bubblesColor: BubblesColor(
                                    dotPrimaryColor: Color(0xff33b5e5),
                                    dotSecondaryColor: Color(0xff0099cc),
                                  ),
                                  likeBuilder: (bool isLiked) {
                                    return Icon(
                                      Icons.thumb_up,
                                      color: isLiked ? Colors.deepPurpleAccent : Colors.grey,
                                      size: 60,
                                    );
                                  },
                                ),
                                SizedBox(width: 30,),
                                LikeButton(
                                  onTap: onLikeButtonTapped,
                                  size: 60,
                                  circleColor:
                                  CircleColor(start: Color(0xff00ddff), end: Color(0xff0099cc)),
                                  bubblesColor: BubblesColor(
                                    dotPrimaryColor: Color(0xff33b5e5),
                                    dotSecondaryColor: Color(0xff0099cc),
                                  ),
                                  likeBuilder: (bool isLiked) {
                                    return Icon(
                                      Icons.thumb_down,
                                      color: isLiked ? Colors.deepPurpleAccent : Colors.grey,
                                      size: 60,
                                    );
                                  },
                                ),
                              ],

                            ),
                          )

                        ),*/

                        SizedBox(height: 20),
                        FadeAnimation(2.5,
                          Container(
                              child:Text("Image",style: TextStyle(color: Colors.white,fontSize: 20.0),)
                          ),
                        ),
                        SizedBox(height: 20),
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
                                child: Column(
                                  children: <Widget>[
                                    imageFile != null
                                        ?  Center(child : new Image(image: new FileImage(imageFile),))
                                        : Center(child : new Icon(Icons.add_a_photo,size: 120,color: Colors.black,)),
                                  ]
                                ),
                              ),
                            )
                        ),
                        SizedBox(height: 20,),
                        FadeAnimation(3.1,
                          Container(
                              child:Center(
                                child: Row(
                                  children: <Widget>[
                                    Card(
                                      margin: EdgeInsets.all(10.0),
                                      color: Colors.cyan,
                                      child: InkWell(
                                        onTap: (){

                                        },
                                        splashColor: Colors.green,
                                        child: Center(
                                          heightFactor:2,
                                          widthFactor: 2.5,
                                          child: Container(
                                            child:Text("Cancle",style: new TextStyle(fontSize: 17.0,color: Colors.white),),
                                          ),
                                        ),

                                      ),
                                    ),
                                    Card(
                                      margin: EdgeInsets.all(10.0),
                                      color: Colors.cyan,
                                      child: InkWell(
                                        onTap: (){

                                        },
                                        splashColor: Colors.green,
                                        child: Center(
                                          heightFactor:2,
                                          widthFactor: 2.5,
                                          child: Container(
                                            child:Text("Submit",style: new TextStyle(fontSize: 17.0,color: Colors.white),),
                                          ),
                                        ),

                                      ),
                                    ),


                                  ],
                                ),
                              )
                          )


                        )


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

  Future<bool> onLikeButtonTapped(bool isLiked) async{
    /// send your request here
    // final bool success= await sendRequest();

    /// if failed, you can do nothing
    // return success? !isLiked:isLiked;

    return !isLiked;
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