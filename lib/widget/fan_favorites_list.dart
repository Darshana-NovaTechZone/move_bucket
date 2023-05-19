import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:movie_bucket/widget/text.dart';

import '../constan/color.dart';

class FanFavoritesList extends StatefulWidget {
  const FanFavoritesList(
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
  State<FanFavoritesList> createState() => _FanFavoritesListState();
}

class _FanFavoritesListState extends State<FanFavoritesList> {
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
      height: 450,
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
                child: Stack(
                  children: [
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: selected == widget.cat[index]
                            ? light_black
                            : Colors.transparent,
                        border: Border.all(
                            color: selected == widget.cat[index]
                                ? Colors.white10
                                : Colors.transparent,
                            width: 0),
                      ),
                      // height: widget.height,

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
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                width: 200,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: yellow,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        CustomText(
                                            text: '8.5',
                                            fontSize: 17,
                                            colorText: Colors.white54,
                                            fontWeight: FontWeight.normal),
                                        SizedBox(
                                          width: 30,
                                        ),
                                        Icon(
                                          Icons.star_border_rounded,
                                          color: blue,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'Guardians of the Galaxy Vol.3',
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: white,
                                          fontWeight: FontWeight.normal),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        height: 45,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            color: Colors.white12,
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.add,
                                              color: blue,
                                            ),
                                            Text(
                                              'Watchlist',
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  color: blue,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.play_arrow,
                                          color: white,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          'Trailer',
                                          style: TextStyle(
                                              fontSize: 17,
                                              color: white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ]),
                    ),
                    Positioned(
                      top: 5,
                      child: Icon(
                        Icons.add,
                        color: white,
                        size: 45,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
