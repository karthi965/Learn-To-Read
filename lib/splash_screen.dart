import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_pageview_learning/pageview_single_letter.dart';
import 'package:lottie/lottie.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _State();
}

class _State extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 6),
            () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext) =>SingleLetterWords ())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset('images/Animation - 1710832123602.json',
                height: 200,width: 150,
                alignment: Alignment.center),
            Text('LEARN TO READ', style: TextStyle(color: Colors.red,fontSize: 30,fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
