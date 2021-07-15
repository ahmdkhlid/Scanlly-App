import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'About_CT_ray.dart';
import 'About_MRI_ray.dart';
import 'Account_Info.dart';
import 'HomeScreen.dart';
import 'Signup_screen.dart';

class Aboutxrays extends StatefulWidget {
  static const routeName = '/Aboutxrays';

  @override
  _AboutxraysState createState() => _AboutxraysState();
}

class _AboutxraysState extends State<Aboutxrays> {
  @override
  Widget build(BuildContext context) {
    //return MaterialApp(
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
                    color: Colors.white30,
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => Aboutxrays()));
                    },
                    child: Text(
                      'X-RAY',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 30),
                    ),
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
                    color: Colors.blue,
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
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 30),
                    ),
                    color: Colors.blue,
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
              color: const Color(0xffe0d8d8),
              image: const DecorationImage(
                image: NetworkImage(
                    'https://static.webteb.net/images/content/tbl_articles_article_18461_243b261f598-4059-4ab5-92b0-119c490a84af.jpg'),
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
            //  height: 400,
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
                ' هناك نوعين من الأشعةالسينية(العالية والمنخفضة).'
                'وبشكل عام تمتلك الأشعةالسينية طاقة تتراوح بين (100 eV)و (100 keV)  فالأشعةالتي تمتلك طاقة أعلى من (5-10 keV) تسمى بالأشعة السينيةالعاليةوالأشعة ذات الطاقة الأخفض سميت بالأشعة السينية المنخفضةتستخدم الاشعة السينية فى المجال الطبى  في رؤية بنية العظام وشكلها ويستخدم فيها الأشعة السينية العالية فالكتلةالذريةالعاليةللكالسيوم في الأسنان والعظام تمتص أشعةاكس بينما تخترق باقي الأشعة الخلايا الأخرى في الجسم المسح المقطعي( CT scans) والمطيافية الفلوريةوالعلاج بالاشعاع كعلاج بعض أنواع السرطانات كلها تعد استخدامات اخرى لتقنية التشخيص الاشعاعي',
                style: TextStyle(
                    fontSize: 17,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.normal,
                    color: Colors.black),
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.right,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
