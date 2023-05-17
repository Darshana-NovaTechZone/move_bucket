import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomText extends StatelessWidget {
  const CustomText(
      {super.key,
      required this.text,
      required this.colorText,
      required this.fontSize});
  final String text;
  final Color colorText;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return Text(text,
        textAlign: TextAlign.center,
        style: TextStyle(
            color: colorText, fontFamily: 'Tajawal-Bold', fontSize: fontSize));
  }
}
