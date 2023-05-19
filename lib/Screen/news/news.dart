import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:movie_bucket/widget/custom_list.dart';

import '../../constan/color.dart';
import '../../widget/celebritie_list.dart';
import '../../widget/text.dart';

class News extends StatefulWidget {
  const News({super.key});

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
  List celebrities = [
    'assets/p1.PNG',
    'assets/p2.PNG',
    'assets/p4.PNG',
    'assets/p5.PNG',
    'assets/v2.PNG',
    'assets/v3.PNG',
    'assets/v4.PNG',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                  text: "News",
                  colorText: white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
              Container(
                alignment: Alignment.center,
                height: 60,
                width: 160,
                decoration: BoxDecoration(
                    color: yellow, borderRadius: BorderRadius.circular(30)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText(
                        text: "Awards",
                        colorText: black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                    DropdownButton<String>(
                      icon: Icon(
                        Icons.keyboard_arrow_down,
                        size: 40,
                      ),
                      items: <String>['A', 'B', 'C', 'D'].map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (_) {},
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                      text: "Latest",
                      colorText: Colors.white70,
                      fontSize: 25,
                      fontWeight: FontWeight.normal),
                  CustomText(
                      text: "2 hours ago",
                      colorText: Colors.white60,
                      fontSize: 20,
                      fontWeight: FontWeight.normal),
                ],
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_horiz,
                    color: Colors.white60,
                    size: 40,
                  ))
            ],
          ),
          SizedBox(
            height: 30,
          ),
          CustomText(
              text: "2018 Emmy \nNominees in Character.",
              colorText: white,
              fontSize: 35,
              fontWeight: FontWeight.w500),
          Container(
            height: 150,
            child: Row(
              children: [
                Celebrities(
                  list: celebrities,
                ),
                Container(
                  width: 80,
                  height: 80,
                  child: FloatingActionButton(
                    child: Icon(
                      Icons.more_horiz,
                      color: white,
                      size: 50,
                    ),
                    backgroundColor: light_black,
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                      text: "Most Popular",
                      colorText: Colors.white70,
                      fontSize: 25,
                      fontWeight: FontWeight.normal),
                  CustomText(
                      text: "Yestrday",
                      colorText: Colors.white60,
                      fontSize: 20,
                      fontWeight: FontWeight.normal),
                ],
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_horiz,
                    color: Colors.white60,
                    size: 40,
                  )),
            ],
          ),
          CustomList(
              text1: "2018 Film Indipendent Spirit Awards",
              text2: "2018",
              textcolor: Colors.white54,
              cat: celebrities,
              text: true,
              width: 200,
              height: 320)
        ]),
      ),
    );
  }
}
