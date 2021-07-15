import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:scanlly/Google%20Map/Google_Map_Page.dart';
import 'package:scanlly/Screens/Signup_screen.dart';
import 'package:tflite/tflite.dart';
import 'About_X_ray.dart';
import 'Account_Info.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
// ignore: unused_import
import 'package:camera/camera.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List _outputs;
  File _image;
  bool _loading = false;

  @override
  void initState() {
    super.initState();
    _loading = true;

    loadModel().then((value) {
      setState(() {
        _loading = false;
      });
    });
  }

  loadModel() async {
    await Tflite.loadModel(
      model: "assets/model_unquant.tflite",
      labels: "assets/labels.txt",
      numThreads: 1,
    );
  }

  classifyImage(File image) async {
    var output = await Tflite.runModelOnImage(
        path: image.path,
        imageMean: 0.0,
        imageStd: 255.0,
        numResults: 2,
        threshold: 0.2,
        asynch: true);
    setState(() {
      _loading = false;
      _outputs = output;
    });
  }

  @override
  void dispose() {
    Tflite.close();
    super.dispose();
  }

  pickImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    if (image == null) return null;
    setState(() {
      _loading = true;
      _image = image;
    });
    classifyImage(_image);
  }

  pickImageCamera() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);
    if (image == null) return null;
    setState(() {
      _loading = true;
      _image = image;
    });
    classifyImage(_image);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Image.asset(
            'assets/logo.png',
            scale: 2.9,
            alignment: Alignment.centerLeft,
          ),
          backgroundColor: Colors.blue,
          elevation: 4.0,
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context)
                    .pushReplacementNamed(SignupScreen.routeName);
              },
              icon: Icon(Icons.account_circle),
              iconSize: 35,
              color: Colors.white,
            )
          ],
        ),
        floatingActionButton: SpeedDial(
          curve: Curves.easeInOutQuart,
          animatedIcon: AnimatedIcons.search_ellipsis,
          overlayColor: Colors.blue,
          activeBackgroundColor: Colors.lightBlue,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),

          /*    FloatingActionButton(
          shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(20),
    ),*/
          children: [
            SpeedDialChild(
              child: Icon(Icons.add_a_photo),
              backgroundColor: Colors.blueGrey,
              label: "camera",
              labelBackgroundColor: Colors.white,
              onTap: pickImageCamera,
            ),
            SpeedDialChild(
              child: Icon(Icons.photo),
              backgroundColor: Colors.blueGrey,
              label: "storage",
              labelBackgroundColor: Colors.white,
              onTap: pickImage,
            )
          ],
          tooltip: 'Pick Image',
          child: Icon(
            Icons.add_a_photo_outlined,
            size: 40,
            color: Colors.white,
          ),
          backgroundColor: Colors.blue[600],
        ),
        //floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          shape: CircularNotchedRectangle(),
          notchMargin: 10,
          elevation: 15,
          child: Container(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                      color: Colors.black26,
                      onPressed: () {
                        Navigator.of(context)
                            .pushReplacementNamed(HomeScreen.routeName);
                      },
                      icon: Icon(
                        Icons.home_rounded,
                        size: 37,
                      ),
                      padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                    ),
                    SizedBox(
                      width: 55,
                    ),
                    IconButton(
                      color: Colors.black26,
                      onPressed: () {
                        Navigator.of(context)
                            .pushReplacementNamed(GoogleMapPage.routeName);
                      },
                      icon: Icon(
                        Icons.location_on,
                        size: 37,
                      ),
                      padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                    ),
                    SizedBox(
                      width: 55,
                    ),
                    IconButton(
                      color: Colors.black26,
                      onPressed: () {
                        Navigator.of(context)
                            .pushReplacementNamed(AccountInfo.routeName);
                      },
                      icon: Icon(
                        Icons.account_circle_rounded,
                        size: 37,
                      ),
                      padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                    ),
                    SizedBox(
                      width: 55,
                    ),
                    IconButton(
                      color: Colors.black26,
                      onPressed: () {
                        Navigator.of(context)
                            .pushReplacementNamed(Aboutxrays.routeName);
                      },
                      icon: Icon(
                        Icons.info_outline_rounded,
                        size: 37,
                      ),
                      padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        body: Container(
          color: Colors.lightBlue,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _loading
                  ? Container(
                      child: Center(
                      child: CircularProgressIndicator(),
                    ))
                  : Container(
                      height: 660,
                      width: 400,
                      color: Colors.transparent,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          _image == null ? Container() : Image.file(_image),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Ray result',
                            style: TextStyle(
                                fontSize: 25,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          _image == null
                              ? Container()
                              : _outputs != null
                                  ? Text(
                                      _outputs[0]["label"],
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 20),
                                    )
                                  : Container(child: Text(""))
                        ],
                      ),
                    ),
              // SizedBox(
              //   width: 10,
              //   height: 65,),
              /* Container(
                child: Row(
                  children: [
                    SizedBox(
                      height: 5,
                      width: 10,
                    ),
                    // ignore: deprecated_member_use
                    FlatButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pushReplacementNamed(Aboutxrays.routeName);
                      },
                      textColor: Colors.white,
                      child: Image.asset(
                        'assets/X-RAY.jpg',
                        width: 185,
                        height: 20,
                        semanticLabel: 'About X-ray',
                      ),
                      color: Colors.black,

                      // padding: EdgeInsets.fromLTRB(15, 63, 15, 63),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    /* BoxShadow(
                      offset: 2.0,
                      color: Colors.black,
                    ),*/
                    SizedBox(
                      height: 5,
                      width: 10,
                    ),
                    // ignore: deprecated_member_use
                    FlatButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pushReplacementNamed(Aboutctrays.routeName);
                      },
                      child: Image.asset(
                        'assets/CT.jfif',
                        width: 130,
                        height: 20,
                      ),
                      color: Colors.black,
                      // padding: EdgeInsets.fromLTRB(15, 63, 15, 63),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    SizedBox(
                      height: 5,
                      width: 10,
                    ),
                  ],
                ),
              ),*/
              Container(
                child: Row(
                  children: [
                    SizedBox(
                      height: 25,
                      width: 10,
                    ),
                    // ignore: deprecated_member_use
                    ElevatedButton.icon(
                      onPressed: () {},
                      label: Text(
                        'Translate reports (soon)',
                      ),
                      icon: Icon(Icons.article_outlined),
                      style: ElevatedButton.styleFrom(
                        onPrimary: Colors.black26,
                        primary: Colors.white10,
                        elevation: 1,
                        minimumSize: Size(320,50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                        ),

                      ) ,
                    ),
                    // SizedBox(
                    //   height: 25,
                    //   width: 10,
                    // ),
                    // ignore: deprecated_member_use
                    /* FlatButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pushReplacementNamed(Aboutctrays.routeName);
                      },
                      child: Image.asset(
                        'assets/3.png',
                        width: 125,
                        height: 10,
                      ),
                      color: Colors.black,
                      //  padding: EdgeInsets.fromLTRB(15, 75, 15, 75),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),*/
                    // SizedBox(
                    //   height: 5,
                    //   width: 10,
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
} /*

IconButton(
color: Colors.blueGrey,
onPressed: () {
Navigator.of(context)
    .pushReplacementNamed(HomeScreen.routeName);
},
icon: Icon(
Icons.home_rounded,
size: 37,
),
// padding: EdgeInsets.fromLTRB(18, 0, 10, 0),
),
IconButton(
color: Colors.blueGrey,
onPressed: () {
Navigator.of(context)
    .pushReplacementNamed(Aboutctrays.routeName);
},
icon: Icon(
Icons.location_on,
size: 37,
),
//  padding: EdgeInsets.fromLTRB(47, 0, 10, 0),
),
SizedBox(
width: 0,
),
IconButton(
color: Colors.blueGrey,
onPressed: () {
Navigator.of(context)
    .pushReplacementNamed(AccountInfo.routeName);
},
icon: Icon(
Icons.account_circle_rounded,
size: 37,

),
// padding: EdgeInsets.fromLTRB(50, 0, 10, 0),
),
IconButton(
color: Colors.blueGrey,
onPressed: () {
Navigator.of(context)
    .pushReplacementNamed(Aboutxrays.routeName);
},
icon: Icon(
Icons.info_outline_rounded,
size: 37,
),
// padding: EdgeInsets.fromLTRB(50, 0, 10, 0),
),*/
