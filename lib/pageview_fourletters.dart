import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'appdatatext_fourletters.dart';
import 'display_four_letters.dart';
import 'navigator.dart';

class FourLettersWords extends StatefulWidget {
   FourLettersWords({super.key});
  @override
  State<FourLettersWords> createState() => _FourLettersWordsState();
}

class _FourLettersWordsState extends State<FourLettersWords> {
  final FlutterTts _flutterTts = FlutterTts();
  
  var _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Navigate(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.teal,
        title: Text(
          'Four Letters',
          style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                // margin: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                height: 350,
                width: 400,
                child: PageView.builder(
                    onPageChanged: (index) {
                      setState(() {
                        _selectedIndex = index;
                      });
                    },
                    controller: PageController(viewportFraction: 0.7),
                    itemCount: fourletters.length,
                    itemBuilder: (context, index) {
                      var _Scale = _selectedIndex == index ? 1.0 : 0.8;
                      return TweenAnimationBuilder(
                        tween: Tween(begin: _Scale, end: _Scale),
                        duration: Duration(milliseconds: 500),
                        child:
                            Displaytexts(fourLettersWords: fourletters[index]),
                        builder: (context, Value, child) {
                          return Transform.scale(
                            scale: Value,
                            child: child,
                          );
                        },
                      );
                    }),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                        (_selectedIndex + 1).toString() +
                            '/' +
                            fourletters.length.toString(),
                        style: TextStyle(fontSize: 30)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(30)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: InkWell(
                      onTap: () {
                        print("---------------------->Share");

                        _speak(fourletters[_selectedIndex].text); // Pass selected word text
                      },
                      child: Padding(
                          padding: EdgeInsets.only(right: 4),
                          child: Icon(
                            Icons.mic,
                            color: Colors.black,
                            size: 50,
                          )),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  void _speak( text) async {
    await _flutterTts.setLanguage('En');
    await _flutterTts.setPitch(0.4);
    await _flutterTts.speak(text);
  }
}
