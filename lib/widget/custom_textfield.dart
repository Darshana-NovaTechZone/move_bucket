import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../constan/color.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.hint,
      required this.controller,
      required this.lable});
  final String hint;
  final String lable;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: TextStyle(color: white),
      decoration: InputDecoration(
        hintText: hint,
        labelText: lable,
        hintStyle: TextStyle(
            color: Colors.white38, fontSize: 20, fontWeight: FontWeight.normal),
        labelStyle: TextStyle(
            color: Colors.white38, fontSize: 30, fontWeight: FontWeight.normal),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white38,
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white38,
          ),
        ),
      ),
    );
  }
}
