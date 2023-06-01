import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:movie_bucket/constan/color.dart';
import 'package:movie_bucket/widget/text.dart';

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
            height: height,
            width: width,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: height / 30,
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back,
                        color: white,
                        size: 40,
                      )),
                  SizedBox(
                    height: height / 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                              text: '2014',
                              colorText: Colors.white54,
                              fontSize: 15,
                              fontWeight: FontWeight.normal),
                          CustomText(
                              text: 'Fury',
                              colorText: white,
                              fontSize: 27,
                              fontWeight: FontWeight.normal),
                        ],
                      ),
                      CircleAvatar(
                        radius: 27,
                        backgroundColor: yellow,
                        child: Icon(
                          Icons.play_arrow,
                          size: 30,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: height / 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CustomText(
                              text: '64',
                              colorText: white,
                              fontSize: 23,
                              fontWeight: FontWeight.normal),
                          CustomText(
                              text: 'Metascore',
                              colorText: Colors.white54,
                              fontSize: 23,
                              fontWeight: FontWeight.normal),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CustomText(
                              text: '361',
                              colorText: white,
                              fontSize: 23,
                              fontWeight: FontWeight.normal),
                          CustomText(
                              text: 'Reviews',
                              colorText: Colors.white54,
                              fontSize: 23,
                              fontWeight: FontWeight.normal),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CustomText(
                              text: '98',
                              colorText: white,
                              fontSize: 23,
                              fontWeight: FontWeight.normal),
                          CustomText(
                              text: 'Popularity',
                              colorText: Colors.white54,
                              fontSize: 23,
                              fontWeight: FontWeight.normal),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: height / 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomText(
                          text: 'Action,Drama War',
                          colorText: white,
                          fontSize: 15,
                          fontWeight: FontWeight.normal),
                      CustomText(
                          text: '2h 14min',
                          colorText: white,
                          fontSize: 15,
                          fontWeight: FontWeight.normal),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: yellow,
                          ),
                          CustomText(
                              text: '7.6',
                              colorText: white,
                              fontSize: 15,
                              fontWeight: FontWeight.normal),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height / 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                          text: 'Synopsis',
                          colorText: Colors.white54,
                          fontSize: 20,
                          fontWeight: FontWeight.normal),
                      SizedBox(
                        height: height / 60,
                      ),
                      CustomText(
                          text:
                              ' A grizzied tank coander akes toughh decisions as he and his crew fight their way accross Germaany in April.195',
                          colorText: white,
                          fontSize: 20,
                          fontWeight: FontWeight.normal),
                    ],
                  ),
                  SizedBox(
                    height: height / 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomText(
                          text: 'Director',
                          colorText: Colors.white54,
                          fontSize: 20,
                          fontWeight: FontWeight.normal),
                      SizedBox(
                        width: 20,
                      ),
                      CustomText(
                          text: 'Davide Ayesr',
                          colorText: white,
                          fontSize: 20,
                          fontWeight: FontWeight.normal),
                    ],
                  ),
                  SizedBox(
                    height: height / 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomText(
                          text: 'Writer',
                          colorText: Colors.white54,
                          fontSize: 20,
                          fontWeight: FontWeight.normal),
                      SizedBox(
                        width: 36,
                      ),
                      CustomText(
                          text: 'Davide Ayesr',
                          colorText: white,
                          fontSize: 20,
                          fontWeight: FontWeight.normal),
                    ],
                  ),
                  SizedBox(
                    height: height / 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomText(
                          text: 'Actor',
                          colorText: Colors.white54,
                          fontSize: 20,
                          fontWeight: FontWeight.normal),
                      SizedBox(
                        width: 40,
                      ),
                      CustomText(
                          text: 'Davide Ayesr',
                          colorText: white,
                          fontSize: 20,
                          fontWeight: FontWeight.normal),
                    ],
                  ),
                  SizedBox(
                    height: height / 30,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Container(
                      alignment: Alignment.center,
                      height: height / 17,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: yellow),
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
                  ),
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
