// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'dart:async';

import 'package:bangsa/onboarding.dart';

class SplashScreen extends StatefulWidget {
  _SplashScreen createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  void initState() {
    super.initState();
    splashscreenStart();
  }

  splashscreenStart() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => OnBoardingScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              colors: [
                Color(0xff120042),
                Color(0xff07507B),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            )),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                './assets/splash_screen.png',
                width: 300,
                height: 300,
              ),
            ],
          )
        ],
      ),
    );
  }
}
