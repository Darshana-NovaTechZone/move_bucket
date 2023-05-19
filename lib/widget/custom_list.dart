import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:movie_bucket/widget/text.dart';

import '../constan/color.dart';

class CustomList extends StatefulWidget {
  const CustomList(
      {super.key,
      required this.cat,
      required this.text,
      required this.width,
      required this.height});
  final List cat;
  final bool text;
  final double width;
  final double height;

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
                    // height: widget.height,
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
                              height: 200,
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
                                  padding: const EdgeInsets.all(4.0),
                                  child: Column(
                                    children: [
                                      CustomText(
                                          text: 'IMAGE',
                                          fontSize: 15,
                                          colorText: Colors.white54,
                                          fontWeight: FontWeight.normal),
                                      CustomText(
                                          text: '2018',
                                          fontSize: 13,
                                          colorText: Colors.white54,
                                          fontWeight: FontWeight.normal)
                                    ],
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