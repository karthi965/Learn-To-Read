import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'appdata_single_letter.dart';
import 'display_single_letters_screen.dart';
import 'navigator.dart';

class SingleLetterWords extends StatefulWidget {
  const SingleLetterWords({super.key});

  @override
  State<SingleLetterWords> createState() => _SingleLetterWordsState();
}

class _SingleLetterWordsState extends State<SingleLetterWords> {
  final FlutterTts _flutterTts = FlutterTts();
  var _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Navigate(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor:Colors.teal,
        title: Text(
          'Single Letters',
          style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                // margin: EdgeInsets.symmetric(vertical: 40, horizontal: 10),
                height: 350,
                width: 400,
                child: PageView.builder(
                    onPageChanged: (index) {
                      setState(() {
                        _selectedIndex = index;
                      });
                    },
                    controller: PageController(viewportFraction: 0.7),
                    itemCount: wordsDataList.length,
                    itemBuilder: (context, index) {
                      var _Scale = _selectedIndex == index ? 1.0 : 0.8;
                      return TweenAnimationBuilder(
                        tween: Tween(begin: _Scale, end: _Scale),
                        duration: Duration(milliseconds: 500),
                        builder: (context, Value, child) {
                          return Transform.scale(
                            scale: Value,
                            child: child,
                          );
                        },
                        child: Displaytext(singleletters: wordsDataList[index]),
                      );
                    }),
              ),
                  Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child:
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                      (_selectedIndex + 1).toString() +
                          '/' +
                          wordsDataList.length.toString(),
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

                        _speak(wordsDataList[_selectedIndex].text); // Pass selected word text
                      },
                      child: Padding(
                          padding: EdgeInsets.only(right: 4),
                          child: Icon(
                            Icons.mic,
                            color: Colors.black,size: 50,
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
