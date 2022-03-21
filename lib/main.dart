import 'package:flutter/material.dart';
import 'package:myapp/catalog.dart';
import 'package:myapp/dashboard.dart';
import 'package:myapp/home.dart';
import 'package:myapp/login.dart';
import 'package:myapp/signup.dart';
import 'package:myapp/splash.dart';
import 'package:myapp/splash2.dart';
import 'package:myapp/splash3.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // primaryColor: Color(0xFF007AFF),
        primarySwatch: Colors.deepPurple,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      initialRoute: "SplashScreen2",
      routes: {
        "HomeScreen": (context) => HomeScreen(),
        "LoginScreen": (context) => LoginScreen(),
        "SignUpScreen": (context) => SignUpScreen(),
        "DashboardScreen": (context) => MyDashboard(),
        "SplashScreen": (context) => SplashScreen(),
        "SplashScreen2": (context) => SplashScreen2(),
        "SplashScreen3": (context) => SplashScreen3(),
        "CatalogScreen": (context) => CatalogScreen(),
      },
    );
  }
}
