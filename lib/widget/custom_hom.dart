import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:movie_bucket/widget/recently.dart';
import 'package:movie_bucket/widget/search_bar.dart';
import 'package:movie_bucket/widget/text.dart';
import 'package:video_player/video_player.dart';

import '../constan/color.dart';
import 'celebritie_list.dart';
import 'custom_list.dart';
import 'fan_favorites_list.dart';
import 'hom_sub_row.dart';

class CustomHome extends StatefulWidget {
  const CustomHome({super.key});

  @override
  State<CustomHome> createState() => _CustomHomeState();
}

class _CustomHomeState extends State<CustomHome> {
  TextEditingController search = TextEditingController();
  int _selectedIndex = 0;
  String title = '';
  late VideoPlayerController _controller;
  List move = [
    'assets/m.PNG',
    'assets/m1.PNG',
    'assets/m2.PNG',
    'assets/n (1).PNG',
    'assets/n (2).PNG',
    'assets/n (3).PNG',
  ];
  List update = [
    'assets/v1.PNG',
    'assets/v2.PNG',
    'assets/v3.PNG',
    'assets/v4.PNG',
  ];
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
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4')
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 470,
            color: black,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                height: 20,
              ),
              SearchBar(
                  controller: search,
                  keyInput: TextInputType.text,
                  icon: Icons.search),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 300,
                child: Stack(
                  children: [
                    Center(
                      child: _controller.value.isInitialized
                          ? AspectRatio(
                              aspectRatio: _controller.value.aspectRatio,
                              child: VideoPlayer(_controller),
                            )
                          : Container(),
                    ),
                    Positioned(
                        bottom: 90,
                        left: MediaQuery.of(context).size.width / 3,
                        child: OutlinedButton(
                          onPressed: () {
                            setState(() {
                              _controller.value.isPlaying
                                  ? _controller.pause()
                                  : _controller.play();
                            });
                          },
                          child: Icon(
                            _controller.value.isPlaying
                                ? Icons.pause
                                : Icons.play_arrow,
                            size: 45,
                            color: white,
                          ),
                          style: OutlinedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(10),
                            side: BorderSide(
                              color: white,
                              width: 3.0,
                            ),
                          ),
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          CustomText(
                              text: 'Browse trailer',
                              fontSize: 25,
                              colorText: white,
                              fontWeight: FontWeight.normal),
                        ],
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_sharp,
                      color: white,
                      size: 25,
                    ),
                  ],
                ),
              )
            ]),
          ),
          Container(
            width: double.infinity,
            color: dark_black,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              HomeSubRow(
                text1: "Popular Movies",
                text2: 'Most Popular in the world',
                text3: 'View all',
              ),
              CustomList(
                text1: "Move",
                text2: "2018",
                textcolor: Colors.white54,
                height: 270,
                cat: move,
                text: true,
                width: 150,
              ),
              HomeSubRow(
                text1: "What's up",
                text2: 'Latest updates in the actinf field',
                text3: 'View all',
              ),
              CustomList(
                text1: "Move",
                text2: "2018",
                textcolor: Colors.white54,
                height: 230,
                cat: update,
                text: false,
                width: 200,
              ),
              Divider(
                thickness: 10,
                height: 20,
                color: black,
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CustomText(
                              text: '|',
                              fontSize: 35,
                              colorText: yellow,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          CustomText(
                              text: 'Fan favorites',
                              fontSize: 25,
                              colorText: white,
                              fontWeight: FontWeight.normal),
                        ],
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_sharp,
                      color: white,
                      size: 25,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: CustomText(
                    text: "This week's top TV and movies",
                    fontSize: 15,
                    colorText: Colors.white54,
                    fontWeight: FontWeight.normal),
              ),
              FanFavoritesList(
                height: 550,
                cat: update,
                text: true,
                width: 200,
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: CustomText(
                    text: 'Popular Celebrities',
                    fontSize: 30,
                    colorText: white,
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: CustomText(
                    text: "Find which celebrities were born today",
                    fontSize: 15,
                    colorText: Colors.white54,
                    fontWeight: FontWeight.normal),
              ),
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
            ]),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            color: black,
            width: double.infinity,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: CustomText(
                          text: 'Recently viewed',
                          fontSize: 25,
                          colorText: white,
                          fontWeight: FontWeight.normal),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: CustomText(
                          text: 'Clear all',
                          fontSize: 17,
                          colorText: blue,
                          fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
                RecentlyList(
                  cat: move,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
