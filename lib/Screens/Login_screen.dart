import 'dart:async' show Future;
import 'package:flutter/material.dart';
import 'package:scanlly/Models/authentication.dart';
import 'HomeScreen.dart';
import 'signup_screen.dart';
import 'package:icon_shadow/icon_shadow.dart';
import 'package:provider/provider.dart';
import 'forget Password.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = '/login';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey();

  Map<String, String> _authData = {'email': '', 'password': ''};

  void _showErrorDialog(String msg) {
    showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
              title: Text(' An Error Occurred'),
              content: Text(msg),
              actions: <Widget>[
                // ignore: deprecated_member_use
                FlatButton(
                  child: Text('Okay'),
                  onPressed: () {
                    Navigator.of(ctx).pop();
                  },
                )
              ],
            ));
  }

  Future<void> _submit() async {
    if (!_formKey.currentState.validate()) {
      return;
    }
    _formKey.currentState.save();

    try {
      await Provider.of<Authentication>(context, listen: false)
          .logIn(_authData['email'], _authData['password']);

      Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
    } catch (error) {
      var errorMessage = 'Authentication Failed. Please try again ';

      _showErrorDialog(errorMessage);
    }
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
        actions: <Widget>[
          // ignore: deprecated_member_use
          FlatButton(
            child: Row(
              children: <Widget>[
                Text(
                  'Signup',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    letterSpacing: 0,
                    shadows: <Shadow>[
                      Shadow(
                          offset: Offset(1.0, 1.0),
                          blurRadius: 3.0,
                          color: Color.fromRGBO(0, 0, 0, 70)),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(1),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      IconShadowWidget(
                        Icon(
                          Icons.person_add,
                          color: Colors.white,
                        ),
                        shadowColor: Colors.black54,
                        showShadow: true,
                      )
                    ],
                  ),
                ),
              ],
            ),
            textColor: Colors.white,
            onPressed: () {
              Navigator.of(context)
                  .pushReplacementNamed(SignupScreen.routeName);
            },
          )
        ],
      ),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFFADB1FD),
                    Color(0xFFFFFFFF),
                  ]),
            ),
          ),
          Center(
            child: Card(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: Container(
                height: 300,
                width: 320,
                padding: EdgeInsets.all(20),
                child: Form(
                  key: _formKey,
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        //email
                        TextFormField(
                          decoration: InputDecoration(labelText: 'E-mail'),
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) {
                            if (value.isEmpty ||
                                !value.contains('@gmail.com')) {
                              return 'invalid E-mail';
                            }
                            return null;
                          },
                          onSaved: (value) {
                            _authData['email'] = value;
                          },
                        ),
                        //password
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Password'),
                          obscureText: true,
                          validator: (value) {
                            if (value.isEmpty || value.length <= 5) {
                              return 'invalid Password';
                            }
                            return null;
                          },
                          onSaved: (value) {
                            _authData['password'] = value;
                          },
                        ),
                        SizedBox(
                          height: 30,
                        ),

                        // ignore: deprecated_member_use
                        RaisedButton(
                          child: Text('login'),
                          onPressed: () {
                            _submit();
                          },
                          // final SharedPreferences sharedPreferences = await SharedPreferences.getInstance() ;
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          color: Colors.blue,
                          textColor: Colors.white,
                        ),
                        // ignore: deprecated_member_use
                        RaisedButton(
                          // materialTapTargetSize: MaterialTapTargetSize.padded,
                          padding: EdgeInsets.fromLTRB(30, 5, 30, 5),
                          child: Text('Forget Password ?'),
                          onPressed: () {
                            Navigator.of(context)
                                .pushReplacementNamed(ForgetPassword.routeName);
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          color: Colors.blue,
                          textColor: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
