import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:movie_bucket/Screen/details/details.dart';
import 'package:movie_bucket/widget/text.dart';

import '../constan/color.dart';

class CustomList extends StatefulWidget {
  const CustomList(
      {super.key,
      required this.cat,
      required this.text,
      required this.width,
      required this.height,
      required this.text1,
      required this.text2,
      required this.textcolor,
      required this.textpossition,
      required this.textpossitionh,
      required this.imgh});
  final List cat;
  final bool text;
  final double width;
  final double height;
  final String text1;
  final String text2;
  final Color textcolor;
  final double textpossition;
  final double textpossitionh;
  final double imgh;

  @override
  State<CustomList> createState() => _CustomListState();
}

class _CustomListState extends State<CustomList> {
  String selected = 'All';
  int i = 0;
  @override
  void initState() {
    setState(() {
      String selected = 'All';
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    bool color = false;
    return Container(
      height: widget.height,
      child: ListView.builder(
          itemCount: widget.cat.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () {
                setState(() {
                  selected = widget.cat[index];
                });
                if (selected == widget.cat[index]) {
                  log(selected);
                  setState(() {
                    color = true;
                  });
                }
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailsScreen(
                            img: widget.cat[index],
                            text: '',
                          )),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: selected == widget.cat[index]
                        ? light_black
                        : Colors.transparent,
                    border: Border.all(
                        color: selected == widget.cat[index]
                            ? light_black
                            : Colors.transparent,
                        width: 0),
                  ),
                  child: Container(
                    width: widget.width,
                    // decoration: BoxDecoration(
                    //     borderRadius: BorderRadius.circular(15),
                    //     color: selected == widget.cat[index]
                    //         ? light_black
                    //         : dark_black),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: SizedBox(
                              height: widget.imgh,
                              width: widget.width,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  widget.cat[index],
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                          widget.text
                              ? Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: widget.textpossition),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomText(
                                            text: widget.text1,
                                            fontSize: 15,
                                            colorText: widget.textcolor,
                                            fontWeight: FontWeight.normal),
                                        SizedBox(
                                          height: widget.textpossitionh,
                                        ),
                                        CustomText(
                                            text: widget.text2,
                                            fontSize: 13,
                                            colorText: Colors.white54,
                                            fontWeight: FontWeight.normal)
                                      ],
                                    ),
                                  ),
                                )
                              : Container()
                        ]),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
