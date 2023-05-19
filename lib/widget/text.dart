import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomText extends StatelessWidget {
  const CustomText(
      {super.key,
      required this.text,
      required this.colorText,
      required this.fontSize,
      required this.fontWeight});
  final String text;
  final Color colorText;
  final double fontSize;
  final FontWeight fontWeight;
  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
            color: colorText,
            fontFamily: 'Tajawal-Bold',
            fontSize: fontSize,
            fontWeight: fontWeight));
  }
}
