import 'dart:developer';

import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:movie_bucket/constan/color.dart';

import '../../widget/custom_list.dart';
import '../../widget/hom_sub_row.dart';
import '../../widget/text.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key, required this.img, required this.text});
  final String text;

  final String img;
  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  bool ontap = false;
  double x = 0;
  double y = 1.5;
  List update = [
    'assets/v1.PNG',
    'assets/v2.PNG',
    'assets/v3.PNG',
    'assets/v4.PNG',
  ];

  _moveBox() {
    setState(() {
      ontap = !ontap;
      x = 1;
      y = 0;
    });
  }

  ScrollController _controller = ScrollController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller.addListener(() {
      log(_controller.position.userScrollDirection.toString());
      if (_controller.position.userScrollDirection.toString() ==
          "ScrollDirection.forward") {
        log('ggggg');
        // _moveBox();
      }
      ;
      // _moveBox();
    });
  }

  @override
  Widget build(BuildContext context) {
    double p = MediaQuery.of(context).size.height;
    return Scaffold(
      body: GestureDetector(
        onVerticalDragUpdate: (details) {
          _moveBox();
          log(details.toString());
        },
        child: Container(
          child: SingleChildScrollView(
            controller: _controller,
            child: Stack(
              children: [
                AnimatedContainer(
                  color: Colors.transparent,
                  duration:
                      ontap ? Duration(seconds: 2) : Duration(milliseconds: 2),
                  alignment: ontap ? Alignment(1, 0) : Alignment.topCenter,
                  height: ontap
                      ? MediaQuery.of(context).size.height + 100
                      : MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width + 200,
                  curve: Curves.easeIn,
                  child: Container(
                    height: MediaQuery.of(context).size.height + 100,
                    width: MediaQuery.of(context).size.width + 500,
                    child: Image.asset(
                      color: Colors.black.withOpacity(0.5),
                      colorBlendMode: BlendMode.darken,
                      'assets/emm.PNG',
                      fit: BoxFit.cover,
                      scale: 2,
                      width: 800,
                    ),
                  ),
                ),
                AnimatedPositioned(
                  duration:
                      ontap ? Duration(seconds: 1) : Duration(milliseconds: 2),
                  top: ontap ? 380 : MediaQuery.of(context).size.height,
                  curve: Curves.easeInOut,
                  child: GestureDetector(
                    onVerticalDragEnd: (details) {
                      _moveBox();
                    },
                    child: AnimatedOpacity(
                      duration:
                          ontap ? Duration(seconds: 3) : Duration(seconds: 5),
                      opacity: ontap ? 1 : 0,
                      onEnd: () {},
                      alwaysIncludeSemantics: true,
                      curve: Curves.slowMiddle,
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        height: 800,
                        width: MediaQuery.of(context).size.width,
                        color: black,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 100,
                            ),
                            AnimatedOpacity(
                              opacity: ontap ? 1 : 0,
                              onEnd: () {},
                              alwaysIncludeSemantics: true,
                              curve: Curves.slowMiddle,
                              duration: ontap
                                  ? Duration(seconds: 3)
                                  : Duration(seconds: 5),
                              child: AnimatedDefaultTextStyle(
                                style: TextStyle(
                                  color: blue,
                                  // backgroundColor: white,
                                ),
                                duration: ontap
                                    ? Duration(seconds: 3)
                                    : Duration(seconds: 5),
                                child: CustomText(
                                    text:
                                        "2018 Emmy \nNominees in Character scsffnfn sfsnfffffffffffffff fsnfsnffffffffffffffff sfnsnfffffffffff sfsnf nsnsncnsnsf sfnsfnsnfs snfnsfs sfsnnfs ssn  sfsnf sfsnfsnfs fsfnsnfs fsfnsf.",
                                    colorText: Colors.white60,
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                            HomeSubRow(
                              text1: "Gallery",
                              text2: '',
                              text3: 'See all',
                            ),
                            CustomList(
                              imgh: 80,
                              textpossitionh: 0,
                              textpossition: 0,
                              text1: "Move",
                              text2: "2018",
                              textcolor: Colors.white54,
                              height: 100,
                              cat: update,
                              text: false,
                              width: 80,
                            ),
                            CustomText(
                                text:
                                    "2018 Emmy \nNominees in Character scsffnfn sfsnfffffffffffffff fsnfsnffffffffffffffff sfnsnfffffffffff sfsnf nsnsncnsnsf sfnsfnsnfs snfnsfs sfsnnfs ssn  sfsnf sfsnfsnfs fsfnsnfs fsfnsf.",
                                colorText: Colors.white60,
                                fontSize: 20,
                                fontWeight: FontWeight.normal),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                AnimatedPositioned(
                  duration: Duration(milliseconds: ontap ? 100 : 1),
                  top: ontap ? 180 : MediaQuery.of(context).size.height - 470,
                  // alignment: ontap ? Alignment(1, 6) : Alignment(0, 2),
                  // transformAlignment: Alignment.topCenter,
                  curve: Curves.easeIn,
                  child: GestureDetector(
                    onVerticalDragEnd: (details) {
                      _moveBox();
                    },
                    child: Container(
                      padding: EdgeInsets.all(20),
                      color: Colors.transparent,
                      height: 900,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          CustomText(
                              text: "Awards",
                              colorText: Colors.white60,
                              fontSize: 25,
                              fontWeight: FontWeight.normal),
                          SizedBox(
                            height: 20,
                          ),
                          CustomText(
                              text: "2018 Film \nIndependent\nSpirit Awards",
                              colorText: white,
                              fontSize: 50,
                              fontWeight: FontWeight.w500),
                          SizedBox(
                            height: 30,
                          ),
                          ontap
                              ? Container()
                              : Row(
                                  children: [
                                    Icon(
                                      Icons.calendar_today,
                                      color: white,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    CustomText(
                                        text: "September 10.2018",
                                        colorText: Colors.white60,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  ],
                                ),
                          ontap
                              ? Container()
                              : Container(
                                  height: 150,
                                  width: MediaQuery.of(context).size.width,
                                  child: IconButton(
                                      onPressed: () {
                                        // _moveBox();
                                        log('hhhhhhhhhhhhh');
                                      },
                                      icon: Icon(
                                        Icons.keyboard_arrow_down_outlined,
                                        size: 45,
                                        color: white,
                                      )),
                                ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 60,
                  left: 20,
                  child: IconButton(
                      onPressed: () {
                        log('ddddddddddd');
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back_rounded,
                        color: white,
                        size: 45,
                      )),
                ),
                AnimatedPositioned(
                  top: ontap
                      ? MediaQuery.of(context).size.height - 100
                      : MediaQuery.of(context).size.height + 300,
                  right: 30,
                  duration:
                      ontap ? Duration(seconds: 1) : Duration(microseconds: 1),
                  child: FloatingActionButton(
                    backgroundColor: yellow,
                    child: Icon(Icons.turn_right_rounded),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
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
