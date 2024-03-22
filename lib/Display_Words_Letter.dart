import 'package:flutter/material.dart';
import 'package:flutter_pageview_learning/appdata_Words_letter.dart';

class Displaytext extends StatelessWidget {
  final Wordsletter wordsletter;
  Displaytext({super.key, required this.wordsletter});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: DefaultTextStyle(
            style: TextStyle(color: Colors.cyan, fontSize: 25),
            child: Stack(children: [
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10),
                child: Container(
                  height: 340,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40), color: Colors.teal),
                  child: Center(
                    child: Text(
                      wordsletter.text,
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
