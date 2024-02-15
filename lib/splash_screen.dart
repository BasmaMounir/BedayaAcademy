import 'dart:async';

import 'package:bedaya_academy/Introduction/intro_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = 'splash';
  SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(
        Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, IntronScreen.routName);
    });

    return Container(
      child: Image(
        image: AssetImage(
          'assets/images/splash_background.png',
        ),
        height: double.infinity,
        width: double.infinity,
        fit: BoxFit.fill,
      ),
    );
  }
}
