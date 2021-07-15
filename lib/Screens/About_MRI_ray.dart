import 'dart:ui';
import 'package:flutter/material.dart';
import 'About_CT_ray.dart';
import 'About_X_ray.dart';
import 'Account_Info.dart';
import 'HomeScreen.dart';
import 'Signup_screen.dart';

// ignore: camel_case_types
class About_MriRays extends StatelessWidget {
  static const routeName = '/about_MriRays';

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
                    padding: EdgeInsets.fromLTRB(50, 0, 10, 0),
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
                    padding: EdgeInsets.fromLTRB(50, 0, 10, 0),
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
                    padding: EdgeInsets.fromLTRB(70, 0, 10, 0),
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
                    padding: EdgeInsets.fromLTRB(50, 0, 10, 0),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 30),
        color: Colors.blue[100],
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Container(
            padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ButtonTheme(
                  minWidth: 80,
                  height: 50,
                  // ignore: deprecated_member_use
                  child: RaisedButton(
                    padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => Aboutxrays()));
                    },
                    child: Text(
                      'X-RAY',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 30),
                    ),
                    color: Colors.blueAccent,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        side: BorderSide(color: Colors.white)),
                  ),
                ),
                ButtonTheme(
                  minWidth: 80,
                  height: 50,
                  // ignore: deprecated_member_use
                  child: RaisedButton(
                    padding: EdgeInsets.fromLTRB(40, 5, 40, 5),
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => Aboutctrays()));
                    },
                    child: Text(
                      'CT',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 30),
                    ),
                    color: Colors.blueAccent,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        side: BorderSide(color: Colors.white)),
                  ),
                ),
                ButtonTheme(
                  minWidth: 80,
                  height: 50,
                  // ignore: deprecated_member_use
                  child: RaisedButton(
                    color: Colors.white30,
                    padding: EdgeInsets.fromLTRB(30, 5, 30, 5),
                    onPressed: () => print("object"),
                    child: Text(
                      'MRI',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 30),
                    ),
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        side: BorderSide(color: Colors.white)),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            height: 205,
            width: 370,
            decoration: BoxDecoration(
              color: const Color(0xfff6f4f4),
              image: const DecorationImage(
                image: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRBE2lJr7i-CjXCvfkv21E9pxy3AghfKaKLag&usqp=CAU&fbclid=IwAR1HPiiEcVT8WFrLB3FPm4c8a7_qtj7nrjZgP488pkrzIMe3Q_nCKjt7V6s'),
                fit: BoxFit.fill,
              ),
              border: Border.all(
                color: Colors.grey,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
              padding: EdgeInsets.all(10),
              alignment: Alignment.topRight,
              height: 400,
              width: 370,
              decoration: BoxDecoration(
                color: const Color(0xfff6f4f4),
                border: Border.all(
                  color: Colors.grey,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
              child: SingleChildScrollView(
                child: Text(
                  " التصوير بالرنين المغناطيسي: إجراء يستخدم المغناطيسية وموجات الراديو وجهاز كمبيوتر لإنشاء صور لمناطق داخل الجسم. اختصار MRI. التصوير بالرنين المغناطيسي غير مؤلم وله ميزة تجنب التعرض للأشعة السينية."
                  "  "
                  "  لا توجد مخاطر معروفة من التصوير بالرنين المغناطيسي. ترتبط فوائد التصوير بالرنين المغناطيسي بدقته الدقيقة في الكشف عن التشوهات الهيكلية للجسم. المرضى الذين يعانون من أجهزة تنظيم ضربات القلب أو الغرسات المعدنية أو الرقائق المعدنية أو المشابك في العين أو حولها لا يمكن فحصهم باستخدام التصوير بالرنين المغناطيسي بسبب تأثير المغناطيس.",
                  style: TextStyle(
                      fontSize: 17,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.normal,
                      color: Colors.black),
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.right,
                ),
              ))
        ]),
      ),
    );
  }
}
