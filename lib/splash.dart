import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:fyp/AuthScreens/screens/auth/auth.dart';
import 'package:fyp/AuthScreens/screens/home.dart';
import 'package:fyp/Drawer/drawer.dart';
import 'package:fyp/Screens/OnBoardingScreens/OnBoardingScreen.dart';
import 'package:lit_firebase_auth/lit_firebase_auth.dart';
import 'package:flutter/material.dart';

class Splashh extends StatefulWidget {
  Splashh({Key key}) : super(key: key);

  @override
  _SplashhState createState() => _SplashhState();
}

class _SplashhState extends State<Splashh> {
  @override
  Widget build(BuildContext context) {
    final user = context.watchSignedInUser();
    user.map(
      (value) {
        _navigateToHomeScreen(context);
      },
      empty: (_) {
        _navigateToAuthScreen(context);
      },
      initializing: (_) {},
    );
    return Scaffold(
      backgroundColor: Color(0xFFFAFBF8),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Image.asset(
                  "assets/5b1cf485052011.5d700ab20c164.gif",
                  height: 400.0,
                  width: 400.0,
                ),
                Transform.scale(scale: 0.5, child: CircularProgressIndicator()),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "ONEXO",
                    style: TextStyle(fontSize: 24),
                  ),
                  Text(
                    "APP",
                    style: TextStyle(fontSize: 13),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void _navigateToAuthScreen(BuildContext context) {
    Timer(Duration(seconds: 5), () {
      WidgetsBinding.instance.addPostFrameCallback((_) => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => OnBoardingScreen())));
    });
  }

  void _navigateToHomeScreen(BuildContext context) {
    Timer(Duration(seconds: 5), () {
      WidgetsBinding.instance.addPostFrameCallback(
        (_) => Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => MainScreen()),
            (route) => false),
      );
    });
  }
}
