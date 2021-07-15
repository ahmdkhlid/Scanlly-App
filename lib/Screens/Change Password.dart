import 'package:flutter/material.dart';
import 'forget Password.dart';
import 'Account_Info.dart';

class ChangePassword extends StatefulWidget {
  static const routeName = '/_ChangePasswordState';

  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: deprecated_member_use
        leading: RaisedButton(
          onPressed: () {
            Navigator.of(context).pushReplacementNamed(AccountInfo.routeName);
          },
          elevation: 1.0,
          color: Colors.blue,
          child: Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
          ),
        ),
        title: Text('Change Password'),
      ),
      body: ListView(children: [
        Container(

          padding: EdgeInsets.fromLTRB(20, 50, 20, 90),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text('Old Password'),
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 15),
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.blue,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      )),
                  child: TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(10.0),
                        fillColor: Colors.white12,
                        border: InputBorder.none,
                        labelText: ("old password")),
                  ),
                ),
                Container(
                  child: Text('New Password'),
                  padding: EdgeInsets.fromLTRB(0, 30, 0, 15),
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.blue,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      )),
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10.0),
                      labelText: ("new password"),
                      fillColor: Colors.white12,
                      border: InputBorder.none,
                    ),
                  ),
                ),
                Container(
                  child: Text('Confirm New Password'),
                  padding: EdgeInsets.fromLTRB(0, 30, 0, 15),
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.blue,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      )),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: ("Confirm New password"),
                      border: InputBorder.none,
                      fillColor: Colors.white12,
                      contentPadding: EdgeInsets.all(10.0),
                    ),
                  ),
                ),
               Container(
                 child:
                 // ignore: deprecated_member_use
                 RaisedButton(
                   shape:
                   RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                   color: Colors.blue,
                   padding: EdgeInsets.fromLTRB(35, 7, 35, 7),
                   onPressed: () {
                     Navigator.of(context).pushReplacementNamed(AccountInfo.routeName);
                   },

                   child: Text(
                     "Confirm",
                     style: TextStyle(
                         fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
                   ),
                 ),
                 padding: EdgeInsets.fromLTRB(115, 30, 0, 5),

               ),
                Container(
                  child:
                  // ignore: deprecated_member_use
                  RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ForgetPassword()),
                      );
                    },
                    shape:
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    color: Colors.lightBlueAccent,
                    padding: EdgeInsets.fromLTRB(35, 7, 35, 7),

                    elevation: 3.0,
                    child: Text("Forget Password ?",
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),
                  ),
                  padding: EdgeInsets.fromLTRB(80, 10, 0, 20),
                ),
              ],
            ),
          ),

        ),

      ]),
    );
  }
}
