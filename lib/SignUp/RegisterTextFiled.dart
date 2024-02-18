import 'package:bedaya_academy/MyTheme.dart';
import 'package:flutter/material.dart';

class RegisterTextFiled extends StatelessWidget {
  String text;
  IconData? pref_icon, sufix_icon;

  RegisterTextFiled(
      {required this.text, required this.pref_icon, this.sufix_icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
      padding: EdgeInsets.all(5),
      child: TextFormField(
        decoration: InputDecoration(
          label: Text(text),
          suffixIcon: Icon(sufix_icon),
          prefixIcon: Icon(
            pref_icon,
            color: MyTheme.DodgerBlue,
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: MyTheme.DodgerBlue, width: 1),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}
