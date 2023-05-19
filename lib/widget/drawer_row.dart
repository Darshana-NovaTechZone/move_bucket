import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:movie_bucket/widget/text.dart';

import '../constan/color.dart';

class DrawerRow extends StatelessWidget {
  const DrawerRow({super.key, required this.text, required this.on});
  final String text;
  final VoidCallback on;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: on,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                children: [
                  Icon(
                    Icons.check_circle_rounded,
                    color: font_green,
                    size: 15,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CustomText(
                      text: text,
                      fontSize: 12,
                      colorText: white,
                      fontWeight: FontWeight.normal),
                ],
              ),
            ),
            Icon(
              Icons.arrow_forward_ios_sharp,
              color: white,
              size: 15,
            ),
          ],
        ),
      ),
    );
  }
}
