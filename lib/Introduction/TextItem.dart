import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:bedaya_academy/MyTheme.dart';
import 'package:flutter/material.dart';

class TextItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: [
        ContentTextItem('معلمين مميزين'),
        ContentTextItem('تنوع الدورات'),
        ContentTextItem('سعر تنافسي'),
        ContentTextItem('خبرات متراكمة'),
        ContentTextItem('دورات تفاعلية'),
        ContentTextItem('دورات مخصصة'),
      ],
      isRepeatingAnimation: true,
      totalRepeatCount: 20,
      pause: Duration(seconds: 2),
    );
  }
}

TyperAnimatedText ContentTextItem(String text) {
  return  TyperAnimatedText(text,
      textStyle: TextStyle(
          fontSize: 40,
          color:MyTheme.PersianRose));
}
