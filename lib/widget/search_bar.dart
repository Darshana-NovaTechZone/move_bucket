import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../constan/color.dart';

class SearchBar extends StatelessWidget {
  SearchBar({
    super.key,
    required this.controller,
    required this.keyInput,
    required this.icon,
  });

  final TextEditingController controller;
  final TextInputType keyInput;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        child: TextFormField(
          style: TextStyle(color: white),
          controller: controller,
          keyboardType: keyInput,
          decoration: InputDecoration(
              counterStyle: TextStyle(color: Colors.white),
              suffixIcon: Icon(
                icon,
                color: Colors.white30,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              filled: true,
              hintStyle: TextStyle(color: Colors.grey[600]),
              hintText: 'Search...',
              fillColor: light_black),
        ),
      ),
    );
  }
}
