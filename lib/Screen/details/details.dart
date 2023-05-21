import 'dart:developer';

import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:movie_bucket/constan/color.dart';

import '../../widget/text.dart';

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

  ScrollController _controller = ScrollController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller.addListener(() {
      log(_controller.position.userScrollDirection.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    double p = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        controller: _controller,
        child: Container(
          child: Stack(
            children: [
              AnimatedContainer(
                duration:
                    ontap ? Duration(seconds: 2) : Duration(milliseconds: 2),
                alignment: ontap ? Alignment(1, 0) : Alignment.topCenter,
                height: ontap
                    ? MediaQuery.of(context).size.height + 200
                    : MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width + 200,
                curve: Curves.easeIn,
                child: Container(
                  height: MediaQuery.of(context).size.height + 200,
                  width: MediaQuery.of(context).size.width + 500,
                  child: Image.asset(
                    'assets/emm.PNG',
                    fit: BoxFit.cover,
                    scale: 2,
                    width: 800,
                  ),
                ),
              ),
              AnimatedPositioned(
                duration: Duration(milliseconds: ontap ? 100 : 1),
                top: ontap ? 200 : MediaQuery.of(context).size.height - 400,
                // alignment: ontap ? Alignment(1, 6) : Alignment(0, 2),
                // transformAlignment: Alignment.topCenter,
                curve: Curves.easeIn,
                child: Container(
                  color: Colors.transparent,
                  height: 900,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      CustomText(
                          text: "2018 Emmy \nNominees in Character.",
                          colorText: white,
                          fontSize: 35,
                          fontWeight: FontWeight.w500),
                      CustomText(
                          text: "2018 Emmy \nNominees in Character.",
                          colorText: white,
                          fontSize: 35,
                          fontWeight: FontWeight.w500),
                      SizedBox(
                        height: 30,
                      ),
                      CustomText(
                          text: "2018 Emmy \nNominees in Character.",
                          colorText: white,
                          fontSize: 35,
                          fontWeight: FontWeight.w500),
                      InkWell(
                        onTap: () {
                          _moveBox();
                        },
                        child: Container(
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
                      ),
                    ],
                  ),
                ),
              ),
              AnimatedPositioned(
                duration:
                    ontap ? Duration(seconds: 2) : Duration(milliseconds: 2),
                top: ontap ? 600 : MediaQuery.of(context).size.height,
                curve: Curves.easeInOut,
                child: Container(
                  height: 800,
                  width: MediaQuery.of(context).size.width,
                  color: black,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: AnimatedOpacity(
                      opacity: ontap ? 1 : 0,
                      onEnd: () {},
                      alwaysIncludeSemantics: true,
                      curve: Curves.slowMiddle,
                      duration:
                          ontap ? Duration(seconds: 3) : Duration(seconds: 5),
                      child: AnimatedDefaultTextStyle(
                        style: TextStyle(
                          color: blue,
                          backgroundColor: white,
                        ),
                        duration:
                            ontap ? Duration(seconds: 3) : Duration(seconds: 5),
                        child: CustomText(
                            text:
                                "2018 Emmy \nNominees in Character scsffnfn sfsnfffffffffffffff fsnfsnffffffffffffffff sfnsnfffffffffff sfsnf nsnsncnsnsf sfnsfnsnfs snfnsfs sfsnnfs ssn  sfsnf sfsnfsnfs fsfnsnfs fsfnsf.",
                            colorText: white,
                            fontSize: 35,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
              )
            ],
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
