import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'About_CT_ray.dart';
import 'About_X_ray.dart';
import 'Account_Info.dart';
import 'HomeScreen.dart';
import 'Signup_screen.dart';

// ignore: camel_case_types
class Ray_Result extends StatelessWidget {
  static const routeName = '/Ray_Result';

  get pickImage => HomeScreen();

  get pickImageCamera => HomeScreen();

  get _outputs => HomeScreen();

  get _loading => HomeScreen();

  get _image => HomeScreen();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Image.asset(
                'assets/logo.png',
                scale: 0.7,
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
              //  curve: Curves.easeInExpo,
              // animatedIcon: AnimatedIcons.ellipsis_search,
              overlayColor: Colors.blue,
              activeBackgroundColor: Colors.blueGrey,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),

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
                Icons.add_photo_alternate,
                size: 35,
                color: Colors.white,
              ),
              backgroundColor: Colors.blue[600],
            ),
            //  floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
            bottomNavigationBar: BottomAppBar(
              shape: CircularNotchedRectangle(),
              notchMargin: 15,
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
                          color: Colors.blueGrey,
                          onPressed: () {
                            Navigator.of(context)
                                .pushReplacementNamed(HomeScreen.routeName);
                          },
                          icon: Icon(
                            Icons.home_rounded,
                            size: 37,
                          ),
                          padding: EdgeInsets.all(25),
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
                          padding: EdgeInsets.all(25),
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
                          padding: EdgeInsets.all(25),
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
                          padding: EdgeInsets.all(25),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            body: Container(
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _loading
                      ? Container(
                          child: Center(
                          child: CircularProgressIndicator(),
                        ))
                      : Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              _image == null ? Container() : Image.file(_image),
                              SizedBox(
                                height: 20,
                              ),
                              _image == null
                                  ? Container()
                                  : _outputs != null
                                      ? Text(
                                          _outputs[0]["label"],
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20),
                                        )
                                      : Container(child: Text(""))
                            ],
                          ),
                        ),
                ],
              ),
            )));
  }
}
