import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:movie_bucket/constan/color.dart';

class SignButton extends StatelessWidget {
  const SignButton(
      {super.key,
      required this.text,
      required this.color,
      required this.colortext,
      required this.fontSize,
      required this.icon});
  final String text;

  final Color color;
  final Color colortext;
  final double fontSize;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 70,
      width: double.infinity,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(20), color: color),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: white,
          ),
          SizedBox(
            width: 10,
          ),
          Text(text,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: colortext, fontFamily: 'Tajawal', fontSize: fontSize)),
        ],
      ),
    );
  }
}
