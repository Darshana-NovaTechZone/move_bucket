import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:movie_bucket/constan/color.dart';
import 'package:movie_bucket/widget/text.dart';

import '../../widget/radius_button.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(children: [
            Container(
                alignment: Alignment.centerRight,
                child: CustomText(
                  colorText: Colors.white60,
                  fontSize: 15,
                  text: 'Skip',
                )),
            RadiusButton(
              fontSize: 20,
              color: blue,
              colortext: white,
              text: 'dddddddddddddd',
            )
          ]),
        ),
      ),
    );
  }
}
