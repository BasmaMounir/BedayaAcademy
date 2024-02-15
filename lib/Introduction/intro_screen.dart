import 'package:bedaya_academy/Introduction/TextItem.dart';
import 'package:bedaya_academy/MyTheme.dart';
import 'package:bedaya_academy/SignUp/SignUpScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntronScreen extends StatelessWidget {
  static const String routName = 'intro';
   IntronScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
            child: Text('لماذا اكاديمية بداية التعليمية',
          style: GoogleFonts.lato(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: Color(0xff54595F)
          ),)),
      TextItem(),
      ]
      ),
      floatingActionButton:FloatingActionButton(
        backgroundColor: MyTheme.DodgerBlue,

        onPressed: (){
          Navigator.pushReplacementNamed(context, SignUpScreen.routeName);
        },
        child: Icon(
          size: 30,
          Icons.arrow_forward
        )
      )
    );
  }
}
