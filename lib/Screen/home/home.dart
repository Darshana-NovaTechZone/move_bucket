import 'dart:developer';
import 'dart:ffi';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:movie_bucket/constan/color.dart';
import 'package:movie_bucket/widget/arrow_button.dart';
import 'package:movie_bucket/widget/custom_hom.dart';
import 'package:movie_bucket/widget/custom_list.dart';
import 'package:movie_bucket/widget/search_bar.dart';
import 'package:movie_bucket/widget/custom_textfield.dart';
import 'package:movie_bucket/widget/text.dart';
import 'package:video_player/video_player.dart';

import '../../widget/celebritie_list.dart';
import '../../widget/drawer.dart';
import '../../widget/fan_favorites_list.dart';
import '../../widget/hom_sub_row.dart';
import '../../widget/recently.dart';
import '../news/news.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController search = TextEditingController();
  int _selectedIndex = 0;
  String title = '';
  late VideoPlayerController _controller;
  static const List<Widget> _pages = <Widget>[
    CustomHome(),
    News(),
    Icon(
      Icons.chat,
      size: 150,
    ),
    Icon(
      Icons.chat,
      size: 150,
    ),
    Icon(
      Icons.chat,
      size: 150,
    ),
  ];
  void _onItemTapped(int index) {
    log('ffff');
    setState(() {
      _selectedIndex = index;
      log(_selectedIndex.toString());
    });
    if (_selectedIndex == 1) {
      setState(() {
        title = 'Favorite';
      });
    }
    if (_selectedIndex == 2) {
      setState(() {
        title = 'Notification';
      });
    }
    if (_selectedIndex == 3) {
      setState(() {
        title = 'Blog';
      });
    }
    if (_selectedIndex == 4) {
      setState(() {
        title = 'Setting';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      bottomNavigationBar: ClipRRect(
        // borderRadius: BorderRadius.circular(15),
        child: BottomNavigationBar(
          unselectedIconTheme: IconThemeData(
            color: Colors.white30,
          ),
          unselectedItemColor: Colors.deepOrangeAccent,
          selectedIconTheme: IconThemeData(color: yellow, size: 40),
          selectedItemColor: font_green,
          onTap: _onItemTapped,
          showSelectedLabels: false,
          showUnselectedLabels: true,
          backgroundColor: light_black,
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.book_outlined,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.explore_outlined,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.whatsapp,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: '',
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: black,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomText(
                colorText: yellow,
                fontSize: 30,
                fontWeight: FontWeight.bold,
                text: 'Movie Gallery'),
            InkWell(
              onTap: () {},
              child: CustomText(
                  colorText: white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  text: 'Sign In'),
            ),
          ],
        ),
      ),
      drawer: CustomDrawer(),
      body: Center(
        child: _pages.elementAt(_selectedIndex), //New
      ),
    );
  }
}
