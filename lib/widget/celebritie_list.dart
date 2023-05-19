import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Celebrities extends StatelessWidget {
  const Celebrities({super.key, required this.list});
  final List list;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 120,
        width: MediaQuery.of(context).size.width - 150,
        child: ListView.builder(
            itemCount: list.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipOval(
                  child: SizedBox.fromSize(
                    size: Size.fromRadius(50), // Image radius
                    child: Image.asset(list[index], fit: BoxFit.cover),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
