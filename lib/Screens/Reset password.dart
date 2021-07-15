import 'package:flutter/material.dart';
import 'Account_Info.dart';
import 'login_screen.dart';

class ResetPassword extends StatefulWidget {
  static const routeName = '/_ResetPasswordState';
  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // ignore: deprecated_member_use
          leading: RaisedButton(
            onPressed: () {
              Navigator.of(context).pushReplacementNamed(LoginScreen.routeName);
            },
            elevation: 1.0,
            color: Colors.blue,
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          title: Image.asset(
            'assets/group.png',
            alignment: Alignment.centerLeft,
            scale: 5,
          ),
          actions: <Widget>[],
        ),
        body: ListView(children: [
          Container(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Center(
                child: (Column(children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Text(
                  'Reset Password',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 40, 280, 10),
                child: Center(
                  child: Column(

                    children: [
                      Container(
                        child: Text(
                          'New Password',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.blueGrey,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    )),
                // padding: EdgeInsets.fromLTRB(0, 20, 280, 10),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "##########",
                      fillColor: Colors.grey,
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(8),
                      labelText: ("new password")),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 20, 225, 10),
                child: Text(
                  ' Confirm New Password',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.blueGrey,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    )),
                //  padding: EdgeInsets.all(5.0),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "##########",
                      fillColor: Colors.grey,
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(8),
                      labelText: ("confirm new password")),
                ),
              ),
              Container(
                padding: EdgeInsets.all(40.0),
              ),
              ButtonTheme(
                padding: EdgeInsets.fromLTRB(45, 10, 45, 10),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                // ignore: deprecated_member_use
                child: RaisedButton(
                  color: Colors.blue,
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacementNamed(AccountInfo.routeName);
                  },
                  child: Text(
                    "Confirm",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                ),
              ),
            ]))),
          ),
        ]));
  }
}
