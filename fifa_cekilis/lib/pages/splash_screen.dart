import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/constant.dart';
import 'package:flutter_application_1/pages/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final String SplashAssetPath = 'assets/raffle.png';
  @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 3), (() {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => HomeScreen(),
      ));
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors().AppBarColor,
      body: Center(
        child: Container(
            width: 200, height: 200, child: Image.asset(SplashAssetPath)),
      ),
    );
  }
}
