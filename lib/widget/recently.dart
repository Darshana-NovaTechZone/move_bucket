import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:movie_bucket/widget/text.dart';

import '../constan/color.dart';

class RecentlyList extends StatefulWidget {
  const RecentlyList({
    super.key,
    required this.cat,
  });
  final List cat;

  @override
  State<RecentlyList> createState() => _RecentlyListState();
}

class _RecentlyListState extends State<RecentlyList> {
  String selected = 'All';
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
      height: 300,
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
                        ? Color.fromARGB(26, 235, 230, 230)
                        : light_black,
                    border: Border.all(
                        color: selected == widget.cat[index]
                            ? Colors.white10
                            : Colors.transparent,
                        width: 0),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: SizedBox(
                            height: 250,
                            width: 200,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                widget.cat[index],
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Column(
                            children: [
                              CustomText(
                                  text: 'IMAGE',
                                  fontSize: 15,
                                  colorText: Colors.white54,
                                  fontWeight: FontWeight.normal),
                            ],
                          ),
                        )
                      ]),
                ),
              ),
            );
          }),
    );
  }
}
