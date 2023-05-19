import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:movie_bucket/Screen/creat_account/create_account.dart';
import 'package:movie_bucket/Screen/home/home.dart';
import 'package:movie_bucket/constan/color.dart';
import 'package:movie_bucket/widget/radius_button.dart';
import 'package:movie_bucket/widget/text.dart';

import '../../widget/custom_textfield.dart';
import '../../widget/sign_button.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

TextEditingController email = TextEditingController();
TextEditingController emails = TextEditingController();

class _WelcomeScreenState extends State<WelcomeScreen> {
  bool checkBox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              TextButton(
                onPressed: () {
                   Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  HomePage()),
                                        );
                },
                child: Container(
                    alignment: Alignment.centerRight,
                    child: CustomText(
                      fontWeight: FontWeight.bold,
                      colorText: Colors.white60,
                      fontSize: 20,
                      text: 'Skip',
                    )),
              ),
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_sharp,
                    color: white,
                    size: 35,
                  )),
              SizedBox(
                height: 30,
              ),
              CustomText(
                  text: "Welcome",
                  colorText: white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
              CustomText(
                  text: "back.",
                  colorText: white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
              SizedBox(
                height: 40,
              ),
              SignButton(
                icon: Icons.facebook,
                fontSize: 20,
                color: blue,
                colortext: white,
                text: 'CONTNUE WITH FACEBOOK',
              ),
              SizedBox(
                height: 20,
              ),
              SignButton(
                icon: Icons.g_mobiledata_sharp,
                fontSize: 20,
                color: Color.fromARGB(31, 146, 136, 136),
                colortext: white,
                text: 'SIGN IN WITH GMAIL',
              ),
              SizedBox(
                height: 40,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 3,
                child: Divider(
                  color: Colors.white38,
                  height: 10,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              CustomTextField(
                controller: email,
                hint: "Email",
                lable: "email",
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                  controller: emails,
                  style: TextStyle(color: white),
                  decoration: InputDecoration(
                    hintText: "password",
                    labelText: "password",
                    hintStyle: TextStyle(
                        color: Colors.white38,
                        fontSize: 20,
                        fontWeight: FontWeight.normal),
                    labelStyle: TextStyle(
                        color: Colors.white38,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white38,
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white38,
                      ),
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.remove_red_eye,
                        color: Colors.white38,
                      ),
                    ),
                  )),
              SizedBox(
                height: 20,
              ),
              Text(
                'Password must be at least 8 characters.',
                style: TextStyle(
                    color: Colors.white38,
                    fontSize: 20,
                    fontWeight: FontWeight.normal),
              ),
              SizedBox(
                height: 50,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  children: [
                    RadiusButton(
                      text: "SIGN IN",
                      color: yellow,
                      colortext: black,
                      fontSize: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Container(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                              alignment: Alignment.center,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Don't have an account?",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white54,
                                        fontFamily:
                                            'Comfortaa-VariableFont_wght'),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                CreateAccount()),
                                      );
                                    },
                                    child: Text(
                                      "Create a new one",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white54,
                                          fontFamily:
                                              'Comfortaa-VariableFont_wght',
                                          decoration: TextDecoration.underline),
                                    ),
                                  )
                                ],
                              ))),
                    ),
                  ],
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
