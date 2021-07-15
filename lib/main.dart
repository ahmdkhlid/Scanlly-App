import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:scanlly/Google%20Map/Google_Map_Page.dart';
import 'package:scanlly/Google%20Map/Location_Provider.dart';
import 'Screens/About_CT_ray.dart';
import 'Screens/About_MRI_ray.dart';
import 'Screens/About_X_ray.dart';
import 'Screens/HomeScreen.dart';
import 'Screens/login_screen.dart';
import 'Screens/ray_result.dart';
import 'Screens/signup_screen.dart';
import 'package:provider/provider.dart';
import 'Models/authentication.dart';
import 'package:flutter/services.dart';
import 'Screens/reset password.dart';
import 'Screens/change Password.dart';
import 'Screens/forget Password.dart';
import 'Screens/Account_Info.dart';

void main() async {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // static const Color transparent = Color(0xFF8400FF);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: LocationProvider()),
        ChangeNotifierProvider.value(value: Authentication()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Scanlly",
        theme: ThemeData(
          primaryColor: Colors.white,
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.blue,
            elevation: 15,
          ),
          primarySwatch: Colors.blueGrey,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: HomeScreen(),
        routes: {
          SignupScreen.routeName: (ctx) => SignupScreen(),
          LoginScreen.routeName: (ctx) => LoginScreen(),
          HomeScreen.routeName: (ctx) => HomeScreen(),
          Aboutxrays.routeName: (ctx) => Aboutxrays(),
          Aboutctrays.routeName: (ctx) => Aboutctrays(),
          About_MriRays.routeName: (ctx) => About_MriRays(),
          GoogleMapPage.routeName: (ctx) => GoogleMapPage(),
          Ray_Result.routeName: (ctx) => Ray_Result(),
          ForgetPassword.routeName: (ctx) => ForgetPassword(),
          AccountInfo.routeName: (ctx) => AccountInfo(),
          ChangePassword.routeName: (ctx) => ChangePassword(),
          ResetPassword.routeName: (ctx) => ResetPassword(),
        },
      ),
    );
  }
}
