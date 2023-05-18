import 'dart:developer';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:marquee/marquee.dart';
import '../constan/color.dart';

class IntroContainer extends StatefulWidget {
  const IntroContainer(
      {super.key, required this.img, required this.text, required this.text2});
  final String img;
  final String text;
  final String text2;

  @override
  State<IntroContainer> createState() => _IntroContainerState();
}

class _IntroContainerState extends State<IntroContainer> {


  bool selected = false;
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(microseconds: 0),
      () async {
        setState(() {
          selected = true;
        });
      },
    );

    // TODO: implement initState
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 1.5,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
            height: MediaQuery.of(context).size.height / 1.5,
            width: double.infinity,
            child: Image.asset(
              widget.img,
              fit: BoxFit.fill,
            )),
        Container(
          child: AnimatedSlide(
            offset: Offset(selected ? 0 : -2, 0.0),
            curve: Curves.easeInSine,
            duration: Duration(seconds: 1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Text(
                    widget.text,
                    style: TextStyle(
                        color: white, fontSize: 50, fontFamily: 'Tajawal-Bold'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: Text(
                    widget.text2,
                    style: TextStyle(
                        color: Colors.white60,
                        fontSize: 20,
                        fontFamily: 'Tajawal-Bold'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
      color: dark_black,
      width: 200,
    );
  }
}
