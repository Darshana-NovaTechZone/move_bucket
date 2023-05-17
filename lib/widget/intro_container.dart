import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../constan/color.dart';

class IntroContainer extends StatelessWidget {
  const IntroContainer(
      {super.key, required this.img, required this.text, required this.text2});
  final String img;
  final String text;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 1.5,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
            height: MediaQuery.of(context).size.height / 1.5,
            width: double.infinity,
            child: Image.asset(
              img,
              fit: BoxFit.fill,
            )),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Text(
            text,
            style: TextStyle(
                color: white, fontSize: 50, fontFamily: 'Tajawal-Bold'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Text(
            text2,
            style: TextStyle(
                color: Colors.white60,
                fontSize: 20,
                fontFamily: 'Tajawal-Bold'),
          ),
        )
      ]),
      color: dark_black,
      width: 200,
    );
  }
}
