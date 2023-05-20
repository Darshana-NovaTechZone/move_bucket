import 'dart:developer';

import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:movie_bucket/constan/color.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key, required this.img});

  final String img;
  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  bool ontap = false;
  double x = 0;
  double y = 1.5;

  _moveBox() {
    setState(() {
      ontap = !ontap;
      x = 1;
      y = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    double p = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: 1500,
        child: Stack(
          children: [
            AnimatedContainer(
                duration: Duration(milliseconds: 300),
                alignment: ontap ? Alignment(-1, 0) : Alignment(-1, -1),
                child: Image.asset('assets/emm.PNG')),
            AnimatedContainer(
              duration: Duration(milliseconds: 300),
              alignment: ontap ? Alignment(0, 0) : Alignment(0, -1.5),
              child: Container(
                color: Colors.transparent,
                height: 800,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text('gggggggggggggggg'),
                      Container(
                        height: 150,
                        width: MediaQuery.of(context).size.width,
                        child: IconButton(
                            onPressed: () {
                              _moveBox();
                              log('hhhhhhhhhhhhh');
                            },
                            icon: Icon(
                              Icons.keyboard_arrow_down_outlined,
                              size: 80,
                            )),
                      ),
                      Container(
                        height: 800,
                        width: MediaQuery.of(context).size.width,
                        color: black,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  changeview() {
    setState(() {
      ontap = true;
    });
  }
}
