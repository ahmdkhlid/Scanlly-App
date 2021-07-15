import 'package:flutter/material.dart';

import 'About_CT_ray.dart';
import 'About_X_ray.dart';
import 'Account_Info.dart';
import 'HomeScreen.dart';
import 'Signup_screen.dart';

class InterpretRays2 extends StatelessWidget {
  static const routeName = '/InterpretRays2';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Image.asset(
            'assets/group.png',
            alignment: Alignment.centerLeft,
            scale: 5,
          ),
          actions: <Widget>[],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).pushReplacementNamed(SignupScreen.routeName);
          },
          backgroundColor: Colors.white,
          child: Icon(
            Icons.account_circle_rounded,
            size: 50,
            color: Colors.greenAccent,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
        floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
        bottomNavigationBar: BottomAppBar(
          child: Container(
            height: 60,
            width: MediaQuery.of(context).size.width / 5,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 0.5),
                  blurRadius: 1.5,
                  spreadRadius: 0.5,
                )
              ],
            ),
            child: Row(
              children: <Widget>[
                IconButton(
                  color: Colors.grey,
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacementNamed(HomeScreen.routeName);
                  },
                  icon: Icon(
                    Icons.home_rounded,
                    size: 37,
                  ),
                  padding: EdgeInsets.fromLTRB(18, 0, 10, 0),
                ),
                IconButton(
                  color: Colors.grey,
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacementNamed(Aboutctrays.routeName);
                  },
                  icon: Icon(
                    Icons.location_on,
                    size: 37,
                  ),
                  padding: EdgeInsets.fromLTRB(47, 0, 10, 0),
                ),
                IconButton(
                  color: Colors.grey,
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacementNamed(AccountInfo.routeName);
                  },
                  icon: Icon(
                    Icons.account_circle_rounded,
                    size: 37,
                  ),
                  padding: EdgeInsets.fromLTRB(50, 0, 10, 0),
                ),
                IconButton(
                  color: Colors.grey,
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacementNamed(Aboutxrays.routeName);
                  },
                  icon: Icon(
                    Icons.info_outline_rounded,
                    size: 37,
                  ),
                  padding: EdgeInsets.fromLTRB(50, 0, 10, 0),
                ),
              ],
            ),
          ),
        ),
        body: Container(
          padding: EdgeInsets.only(top: 20),
          color: Colors.deepPurple[50],
          child: Column(children: <Widget>[
            Container(
              color: Colors.deepPurple[50],
              margin: EdgeInsets.only(left: 3),
              alignment: Alignment.topCenter,
              height: 80,
              child: Text(
                'Hope You Get Better Soon !',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Colors.black,
                  fontStyle: FontStyle.italic,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
                padding: EdgeInsets.all(10),
                color: Colors.deepPurple[50],
                alignment: Alignment.topCenter,
                height: 50,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Your Rays' Type is :",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                )),
            Container(
                color: Colors.deepPurple[50],
                height: 100,
                width: 180,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.check_circle_rounded,
                      color: Colors.deepPurple,
                      size: 33,
                    ),
                  ],
                )),
            ButtonTheme(
              minWidth: 150,
              height: 50,
              // ignore: deprecated_member_use
              child: RaisedButton(
                onPressed: () => print("object"),
                child: Text(
                  "Scan",
                  style: TextStyle(fontSize: 30),
                ),
                color: Colors.deepPurple,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.deepPurple)),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
