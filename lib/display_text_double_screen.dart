import 'package:flutter/material.dart';
import 'appdata_double_letters.dart';

class Displaytext extends StatelessWidget {
  final DoubleLetters doubleLetters;
  Displaytext({super.key, required this.doubleLetters});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: DefaultTextStyle(
            style: TextStyle(color: Colors.cyan, fontSize: 25),
            child: Stack(children: [
              Padding(
                padding: const EdgeInsets.only(left: 8,right: 8),
                child: Container(
                  height: 340,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40), color: Colors.teal),
                  child: Center(
                    child: Text(
                      doubleLetters.text,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ]
            ),
          ),
        ),
        SizedBox(
            height:10
        ),
      ],
    );
  }
}
