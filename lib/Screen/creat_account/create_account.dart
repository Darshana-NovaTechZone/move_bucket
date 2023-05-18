import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:movie_bucket/constan/color.dart';
import 'package:movie_bucket/widget/radius_button.dart';
import 'package:movie_bucket/widget/text.dart';

import '../../widget/custom_textfield.dart';
import '../../widget/sign_button.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

TextEditingController email = TextEditingController();
TextEditingController emails = TextEditingController();
bool checkBox = false;

class _CreateAccountState extends State<CreateAccount> {
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
              SizedBox(
                height: 20,
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
                  text: "Create",
                  colorText: white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
              CustomText(
                  text: "account.",
                  colorText: white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
              SizedBox(
                height: 50,
              ),
              CustomTextField(
                controller: email,
                hint: "full name",
                lable: "Full Name",
              ),
              SizedBox(
                height: 25,
              ),
              CustomTextField(
                controller: email,
                hint: "email",
                lable: "Email",
              ),
              SizedBox(
                height: 25,
              ),
              TextField(
                  controller: emails,
                  style: TextStyle(color: white),
                  decoration: InputDecoration(
                    hintText: "password",
                    labelText: "Password",
                    hintStyle: TextStyle(
                        color: Colors.white38,
                        fontSize: 20,
                        fontWeight: FontWeight.normal),
                    labelStyle: TextStyle(
                        color: Colors.white38,
                        fontSize: 30,
                        fontWeight: FontWeight.normal),
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
                height: 25,
              ),
              Text(
                'Password must be at least 8 characters.',
                style: TextStyle(
                    color: Colors.white38,
                    fontSize: 20,
                    fontWeight: FontWeight.normal),
              ),
              SizedBox(
                height: 25,
              ),
              TextField(
                  controller: emails,
                  style: TextStyle(color: white),
                  decoration: InputDecoration(
                    hintText: "confirm password",
                    labelText: "Confirm Password",
                    hintStyle: TextStyle(
                        color: Colors.white38,
                        fontSize: 20,
                        fontWeight: FontWeight.normal),
                    labelStyle: TextStyle(
                        color: Colors.white38,
                        fontSize: 30,
                        fontWeight: FontWeight.normal),
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
                height: 100,
              ),
              Container(
                height: 50,
                child: Row(
                  children: [
                    Checkbox(
                      hoverColor: black,
                      focusColor: white,
                      checkColor: white,
                      activeColor: black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(1.0),
                      ),
                      side: MaterialStateBorderSide.resolveWith(
                        (states) => BorderSide(width: 2.0, color: white),
                      ),
                      value: checkBox,
                      onChanged: (value) {
                        setState(() {
                          checkBox = value!;
                          log(checkBox.toString());
                        });
                      },
                    ),
                    Row(
                      children: [
                        Text(
                          "I accept ",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white54,
                              fontFamily: 'Comfortaa-VariableFont_wght'),
                        ),
                        Text(
                          "Terms & Condition ",
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 20,
                              color: Colors.white54,
                              fontFamily: 'Comfortaa-VariableFont_wght'),
                        ),
                        Text(
                          "and ",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white54,
                              fontFamily: 'Comfortaa-VariableFont_wght'),
                        ),
                        Text(
                          "Privacy Policy",
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 20,
                              color: Colors.white54,
                              fontFamily: 'Comfortaa-VariableFont_wght'),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
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
                                      // Navigator.push(
                                      //   context,
                                      //   MaterialPageRoute(
                                      //       builder: (context) => NameScreen()),
                                      // );
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
