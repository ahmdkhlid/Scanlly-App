import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Login_screen.dart';
import 'reset password.dart';

class ForgetPassword extends StatefulWidget {
  static const routeName = '/_ForgetPasswordState';

  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Image.asset(
          'assets/group.png',
          alignment: Alignment.centerLeft,
          scale: 5,
        ),
        // ignore: deprecated_member_use
        leading: RaisedButton(
          onPressed: () {
            Navigator.of(context).pushReplacementNamed(LoginScreen.routeName);
          },
          elevation: 1.0,
          color: Colors.blue,
          child: Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
            size: 25,
          ),
        ),

        actions: <Widget>[],
      ),
      body: ListView(padding: EdgeInsets.fromLTRB(15, 0, 15, 0), children: [
        Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(40, 50, 40, 15),
                child: Text(
                  'Forget Password',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  'We will send your code via : '
                  '(Email)',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  'Enter the 6-digit code:',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.blueGrey,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    )),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "######",
                    fillColor: Colors.grey,
                    border: InputBorder.none,
                    labelText: ("enter the code"),
                    contentPadding: EdgeInsets.all(8.0),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ButtonTheme(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      // ignore: deprecated_member_use
                      child: RaisedButton(
                        padding: EdgeInsets.fromLTRB(30, 5, 30, 5),
                        elevation: 1.0,
                        color: Colors.white,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ForgetPassword()),
                          );
                        },
                        child: Text(
                          "Didn't get a code ?",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: ButtonTheme(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  // ignore: deprecated_member_use
                  child: RaisedButton(
                    color: Colors.blue,
                    padding: EdgeInsets.fromLTRB(30, 5, 30, 5),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ResetPassword()),
                      );
                    },
                    child: Text(
                      "Next",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
