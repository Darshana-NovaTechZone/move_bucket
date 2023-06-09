import 'dart:developer';
import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:movie_bucket/Screen/welcom/welcom.dart';
import 'package:movie_bucket/constan/color.dart';
import 'package:movie_bucket/widget/aniation.dart';
import 'package:movie_bucket/widget/intro_container.dart';
import 'package:onboarding_animation/onboarding_animation.dart';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen>
    with SingleTickerProviderStateMixin {
  // declare and initizlize the page controller
  int _activePage = 0;
  double? x;
  PageController _pageController = PageController();

  @override
  void initState() {
    super.initState();

    _pageController.addListener(() {
      setState(() {
        log(_pageController.page.toString());
        if (_pageController.page == 0.0) {
          setState(() {
            _activePage = 0;
          });
        }
        if (_pageController.page == 1.0) {
          setState(() {
            _activePage = 1;
          });
        }
        if (_pageController.page == 2.0) {
          setState(() {
            _activePage = 2;
          });
        }
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  // the index of the current page

  bool _isLoggedIn = false;
  final List<Widget> _pages = [
    IntroContainer(
      img: 'assets/b1.PNG',
      text: "Only what you like",
      text2:
          "The moment you land on our application,\nyou wont't see nothing but what you\n will like and want ti see.",
    ),
    IntroContainer(
      img: 'assets/b2.PNG',
      text: "Share with friends",
      text2:
          "Now you are able to share news and movies \nwith your friends without leaving the app.",
    ),
    IntroContainer(
      img: 'assets/b3.PNG',
      text: "Collections",
      text2:
          "Not only you can save movies but you can\nalso ake collections on your own criteria.",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: dark_black,
      body: Stack(
        children: [
          InkWell(
            onTapDown: (_) {
              var f = _pageController.page.toString();
              log(f);

              if (_pageController.page == 0.0) {
                setState(() {
                  _activePage = 0;
                });
              }
              if (_pageController.page == 1.0) {
                setState(() {
                  _activePage = 1;
                });
              }
              if (_pageController.page == 2.0) {
                setState(() {
                  _activePage = 2;
                });
              }
            },
            child: OnBoardingAnimation(
              controller: _pageController,
              pages: _pages,
              indicatorDotHeight: 7.0,
              indicatorDotWidth: 7.0,
              indicatorActiveDotColor: dark_black,
              indicatorInActiveDotColor: dark_black,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            height: 150,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List<Widget>.generate(
                          _pages.length,
                          (index) => Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                child: InkWell(
                                  onTap: () {
                                    log('gggggggggggg');
                                    log(_pageController.page.toString());
                                    _pageController.animateToPage(index,
                                        duration:
                                            const Duration(milliseconds: 300),
                                        curve: Curves.easeIn);
                                    setState(() {
                                      _activePage = index;
                                    });
                                  },
                                  child: CircleAvatar(
                                    radius: 8,
                                    backgroundColor: _activePage == index
                                        ? yellow
                                        : light_black,
                                  ),
                                ),
                              )),
                    ),
                  ),
                  FloatingActionButton(
                    backgroundColor: yellow,
                    child: Icon(
                      Icons.arrow_forward,
                      color: black,
                    ),
                    onPressed: () {
                      // startAnimation();
                      log(_pageController.page.toString());
                      _pageController.animateToPage(
                          _pageController.page!.toInt() + 1,
                          duration: Duration(milliseconds: 400),
                          curve: Curves.easeIn);

                      // _pageController.animateToPage(1 + 1,
                      //     duration: const Duration(milliseconds: 500),
                      //     curve: Curves.easeIn);
                      log(_activePage.toString());
                      if (_activePage == 2) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WelcomeScreen()));
                      }
                    },
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
