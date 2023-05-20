import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:movie_bucket/widget/text.dart';

import '../constan/color.dart';

class CustomDropDowng extends StatelessWidget {
  const CustomDropDowng({super.key,required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 60,
      width: 160,
      decoration:
          BoxDecoration(color: yellow, borderRadius: BorderRadius.circular(30)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomText(
              text: text,
              colorText: black,
              fontSize: 20,
              fontWeight: FontWeight.bold),
          DropdownButton<String>(
            icon: Icon(
              Icons.keyboard_arrow_down,
              size: 40,
            ),
            items: <String>['A', 'B', 'C', 'D'].map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (_) {},
          )
        ],
      ),
    );
  }
}
