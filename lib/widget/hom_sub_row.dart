import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:movie_bucket/widget/text.dart';

import '../constan/color.dart';

class HomeSubRow extends StatelessWidget {
  const HomeSubRow(
      {super.key,
      required this.text1,
      required this.text2,
      required this.text3});
  final String text1;
  final String text2;
  final String text3;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                    text: text1,
                    fontSize: 30,
                    colorText: white,
                    fontWeight: FontWeight.normal),
                SizedBox(
                  height: 5,
                ),
                CustomText(
                    text: text2,
                    fontSize: 15,
                    colorText: Colors.white54,
                    fontWeight: FontWeight.normal),
              ],
            ),
          ),
          Text(
            text3,
            style: TextStyle(
                decoration: TextDecoration.underline,
                fontSize: 15,
                color: Colors.white54,
                fontWeight: FontWeight.normal),
          ),
        ],
      ),
    );
  }
}
