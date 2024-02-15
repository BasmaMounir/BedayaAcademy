import 'package:bedaya_academy/Introduction/intro_screen.dart';
import 'package:bedaya_academy/SignUp/SignUpDetails.dart';
import 'package:bedaya_academy/SignUp/SignUpScreen.dart';
import 'package:bedaya_academy/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bedaya Academy',
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (_)=> SplashScreen(),
        IntronScreen.routName:(_)=> IntronScreen(),
        SignUpScreen.routeName:(_)=>SignUpScreen(),
        SignUpDetails.routeName:(_)=>SignUpDetails(),
      },
    );
  }
}

