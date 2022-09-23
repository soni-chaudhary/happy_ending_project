import 'dart:async';
// import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:happyendingapp/screens/signIn.dart';
import 'package:happyendingapp/themes/darkTheme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: dark,
        home: SplashScreen());
  }
}

class SplashScreen extends StatefulWidget {
  @override
  SplashState createState() => SplashState();
}

class SplashState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 4),
        (() => Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => SignIn()),
            (route) => false)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.redAccent,
        height: MediaQuery.of(context).size.height,
        child: Image.asset(
          'images/splash_screen.gif',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
