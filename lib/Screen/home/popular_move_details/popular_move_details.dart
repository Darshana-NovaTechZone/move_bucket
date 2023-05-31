import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:movie_bucket/constan/color.dart';

import '../../../widget/radius_button.dart';

class PopularMoveDetails extends StatefulWidget {
  const PopularMoveDetails({super.key});

  @override
  State<PopularMoveDetails> createState() => _PopularMoveDetailsState();
}

class _PopularMoveDetailsState extends State<PopularMoveDetails> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SizedBox(
        height: height,
        child: Stack(children: [
          SizedBox(
              height: height,
              width: width,
              child: Image.asset(
                color: Colors.black.withOpacity(0.5),
                colorBlendMode: BlendMode.darken,
                'assets/m.PNG',
                fit: BoxFit.fill,
              )),
          Positioned(
              width: width - 40,
              // left: 20,
              // // right: 0,
              bottom: 0,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  alignment: Alignment.center,
                  height: 70,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20), color: yellow),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.add),
                      SizedBox(
                        width: 20,
                      ),
                      Text('ADD TO',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: black,
                              fontFamily: 'Tajawal',
                              fontSize: 17,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ))
        ]),
      ),
    );
  }
}
