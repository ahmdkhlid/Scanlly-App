import 'package:flutter/material.dart';

import 'HomeScreen.dart';
import 'Signup_screen.dart';
import 'change Password.dart';

class AccountInfo extends StatefulWidget {
  static const routeName = '/_MyHomePageState';

  @override
  _AccountInfoState createState() => _AccountInfoState();
}

class _AccountInfoState extends State<AccountInfo> {
  Row addRadioButton(int btnValue, String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Radio(
          // activeColor: Color(0xFF1C33FD),
          value: btnValue,
          groupValue: -1,
          onChanged: (int value) {},
        ),
        Text(title)
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
            },
            icon: Icon(Icons.arrow_back),
            iconSize: 25,
            color: Colors.white,
          ),
          title: Text(
            'Account Info',
            style: TextStyle(
                fontSize: 17,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.normal,
                color: Colors.black),
            textDirection: TextDirection.rtl,
            textAlign: TextAlign.right,
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
        body: Stack(children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.blue.withOpacity(0.9),
                  Colors.blue.withOpacity(0.1),
                ],
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Container(
                  padding: EdgeInsets.fromLTRB(30, 30, 30, 15),
                  child: InkWell(
                    onTap: () {},
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://th.bing.com/th/id/OIP.oaaHHX-cWbKiluuQ0caI7QHaEK?pid=ImgDet&rs=1"),
                      radius: 50,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Center(
              child: Container(
                  padding: EdgeInsets.fromLTRB(30, 70, 30, 30),
                  child: Form(
                    child: SingleChildScrollView(
                      child: Column(children: <Widget>[
                        // Full name
                        TextField(
                          decoration: InputDecoration(
                              hintText: "enter FulName",
                              fillColor: Colors.black,
                              labelText: ("FulName")),
                        ),

                        TextField(
                          decoration: InputDecoration(
                              hintText: "enter Username",
                              fillColor: Colors.black,
                              labelText: ("Username")),
                        ),
                        TextField(
                            decoration: InputDecoration(
                          hintText: "enter Email",
                          fillColor: Colors.black,
                          labelText: ("Email"),
                        )),
                        TextField(
                            decoration: InputDecoration(
                          hintText: "enter Address",
                          fillColor: Colors.black,
                          labelText: ("Address"),
                        )),
                        TextField(
                            decoration: InputDecoration(
                          hintText: "enter Age",
                          fillColor: Colors.black,
                          labelText: ("Age"),
                        )),

                        TextField(
                          decoration: InputDecoration(
                              hintText: "enter Phone number",
                              fillColor: Colors.black,
                              labelText: ("Phone number")),
                        ),

                        Container(
                          padding: EdgeInsets.fromLTRB(0, 15, 70, 60),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Gender',
                                style: TextStyle(color: Colors.black),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  addRadioButton(
                                    0,
                                    'Male',
                                  ),
                                  addRadioButton(1, 'Female'),
                                ],
                              ),
                            ],
                          ),
                        ),

                        Container(
                          // ignore: deprecated_member_use
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            color: Colors.blue,
                            padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                            onPressed: () {
                              Navigator.of(context)
                                  .pushReplacementNamed(AccountInfo.routeName);
                            },
                            child: Text(
                              "Save Changes",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        ButtonTheme(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          // ignore: deprecated_member_use
                          child: RaisedButton(
                            color: Colors.blue,
                            padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ChangePassword()),
                              );
                            },
                            child: Text(
                              "Change Password",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.white),
                            ),
                          ),

                          // This trailing comma makes auto-formatting nicer for build methods.
                        )
                      ]),
                    ),
                  )))
        ]));
  }
}
