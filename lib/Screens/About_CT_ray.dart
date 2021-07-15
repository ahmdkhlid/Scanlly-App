import 'dart:ui' show Color, FontStyle, FontWeight, TextAlign, TextDirection;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'About_MRI_ray.dart';
import 'About_X_ray.dart';
import 'Account_Info.dart';
import 'HomeScreen.dart';
import 'Signup_screen.dart';

class Aboutctrays extends StatelessWidget {
  static const routeName = '/Aboutctrays';

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
        padding: EdgeInsets.all(5),
        color: Colors.blue[100],
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Container(
            padding: EdgeInsets.only(top: 30),
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
                    onPressed: () => print("object"),
                    child: Text(
                      'CT',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 30),
                    ),
                    color: Colors.white30,
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
                    padding: EdgeInsets.fromLTRB(30, 5, 30, 5),
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => About_MriRays()));
                    },
                    child: Text(
                      'MRI',
                      style: TextStyle(fontSize: 30),
                      textAlign: TextAlign.center,
                    ),
                    color: Colors.blueAccent,
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
                    'https://4.bp.blogspot.com/-v3l9kd_5qLg/Wz-0o6x_rxI/AAAAAAAACOE/RyAd3MVQJ7gIITM3e3yauJdutp6DAATlgCLcBGAs/s1600/d8a7d984d985d8b3d8aad988d98ad8a7d8aa-d981d98a-d8acd8b3d985-d8a7d984d8a5d986d8b3d8a7d986-21.jpg'),
                fit: BoxFit.fill,
              ),
              border: Border.all(
                color: Colors.white24,
                width: 3,
              ),
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
              padding: EdgeInsets.fromLTRB(30, 10, 20, 10),
              alignment: Alignment.center,
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
                  "الاشعة المقطعية: يتم الحصول على صور مفصلة للأعضاء الداخلية بواسطة هذا النوع من أجهزة الأشعة السينية المتطورة. CT لتقف على التصوير المقطعي."
                  "  ‎يمكن أن يكشف التصوير المقطعي عن تفاصيل تشريحية للأعضاء الداخلية لا يمكن رؤيتها في الأشعة السينية التقليدية. يدور أنبوب الأشعة السينية بسرعة حول المريض وتضرب الأشعة السينية العديد من أجهزة الكشف بعد مرورها عبر الجسم."
                  "    أنواع الاشعة المقطعية: حتى الان لا يوجد الا نوعين : التصوير المقطعى الخطى و التصوير المقطعى بالكمبيوتر ويعتبر هذا الذى يستخدم الان"
                  "الاشعة المقطعية: يتم الحصول على صور مفصلة للأعضاء الداخلية بواسطة هذا النوع من أجهزة الأشعة السينية المتطورة. CT لتقف على التصوير المقطعي."
                  "  ‎يمكن أن يكشف التصوير المقطعي عن تفاصيل تشريحية للأعضاء الداخلية لا يمكن رؤيتها في الأشعة السينية التقليدية. يدور أنبوب الأشعة السينية بسرعة حول المريض وتضرب الأشعة السينية العديد من أجهزة الكشف بعد مرورها عبر الجسم."
                  "    أنواع الاشعة المقطعية: حتى الان لا يوجد الا نوعين : التصوير المقطعى الخطى و التصوير المقطعى بالكمبيوتر ويعتبر هذا الذى يستخدم الان"
                  "الاشعة المقطعية: يتم الحصول على صور مفصلة للأعضاء الداخلية بواسطة هذا النوع من أجهزة الأشعة السينية المتطورة. CT لتقف على التصوير المقطعي."
                  "  ‎يمكن أن يكشف التصوير المقطعي عن تفاصيل تشريحية للأعضاء الداخلية لا يمكن رؤيتها في الأشعة السينية التقليدية. يدور أنبوب الأشعة السينية بسرعة حول المريض وتضرب الأشعة السينية العديد من أجهزة الكشف بعد مرورها عبر الجسم."
                  "    أنواع الاشعة المقطعية: حتى الان لا يوجد الا نوعين : التصوير المقطعى الخطى و التصوير المقطعى بالكمبيوتر ويعتبر هذا الذى يستخدم الان"
                  "الاشعة المقطعية: يتم الحصول على صور مفصلة للأعضاء الداخلية بواسطة هذا النوع من أجهزة الأشعة السينية المتطورة. CT لتقف على التصوير المقطعي."
                  "  ‎يمكن أن يكشف التصوير المقطعي عن تفاصيل تشريحية للأعضاء الداخلية لا يمكن رؤيتها في الأشعة السينية التقليدية. يدور أنبوب الأشعة السينية بسرعة حول المريض وتضرب الأشعة السينية العديد من أجهزة الكشف بعد مرورها عبر الجسم."
                  "    أنواع الاشعة المقطعية: حتى الان لا يوجد الا نوعين : التصوير المقطعى الخطى و التصوير المقطعى بالكمبيوتر ويعتبر هذا الذى يستخدم الان",
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
