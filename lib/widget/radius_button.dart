import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:movie_bucket/constan/color.dart';

class RadiusButton extends StatelessWidget {
  const RadiusButton({
    super.key,
    required this.text,
    required this.color,
    required this.colortext,
    required this.fontSize,
  });
  final String text;

  final Color color;
  final Color colortext;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 70,
      width: double.infinity,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(20), color: color),
      child: Text(text,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: colortext,
              fontFamily: 'Tajawal',
              fontSize: fontSize,
              fontWeight: FontWeight.bold)),
    );
  }
}
