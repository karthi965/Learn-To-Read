import 'package:flutter/material.dart';
import 'package:flutter_pageview_learning/Pageview_Words_letter.dart';
import 'package:flutter_pageview_learning/pageview_double_letters.dart';
import 'package:flutter_pageview_learning/pageview_fourletters.dart';
import 'package:flutter_pageview_learning/pageview_single_letter.dart';
import 'package:flutter_pageview_learning/pageview_three_letters.dart';
import 'package:flutter_pageview_learning/personal_profile.dart';

import 'company_profile.dart';

class Navigate extends StatelessWidget {
  const Navigate({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.teal,
      child: ListView(
        children: [
         // Image.asset('images/ bagreenckgrount image.jpg'),
          UserAccountsDrawerHeader(

            accountName: Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Text(
                'Karthik,'
                    ' Vijay Ganapathy',
                style: TextStyle(
                    color: Colors.white, fontSize: 20, fontFamily: 'robot'),
              ),
            ),
            accountEmail: Text(
              'ganapthv@gmail.com',
              style: TextStyle(
                  color: Colors.white, fontSize: 15, fontFamily: 'robot'),
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/green backgrount image.jpg'), fit: BoxFit.cover),
            ),

             //currentAccountPicture: Padding(
            //   padding: const EdgeInsets.only(bottom: 5),
            //   child: CircleAvatar(
            //     radius: 40,
            //     backgroundImage: AssetImage('image/profile.jpg'),
            //
            //   ),
            // ),
            // ),
          ),
          ListTile(
            title: const Text(
              'Single Letter Words',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () => Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                    builder: (BuildContext Context) => SingleLetterWords())),
          ),
          Divider(
            height: 20,
            color: Colors.black,
          ),
          ListTile(
            title: const Text(
              'Two Letters Words',
              style: TextStyle(fontFamily: 'robot',color: Colors.white),
            ),
            onTap: () =>
                Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (BuildContext Context) => TwoLettersWords(),
            )),
          ),
          Divider(height: 20, color: Colors.black),
          ListTile(
            title: const Text(
              'Three Letter Words',
              style: TextStyle(fontFamily: 'robot',color: Colors.white),
            ),
            onTap: () => Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                    builder: (BuildContext Context) => ThreeLettersWords())),
          ),
          Divider(
            height: 10,
            color: Colors.black,
          ),
          ListTile(
            title: const Text(
              'Four Letter Words',
              style: TextStyle(fontFamily: 'robot',color: Colors.white),
            ),
            onTap: () => Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                    builder: (BuildContext Context) => FourLettersWords())),
          ),
          Divider(
            height: 10,
            color: Colors.black,
          ),
          ListTile(
            title: const Text(
              ' Words ',
              style: TextStyle(fontFamily: 'robot',color: Colors.white),
            ),
            onTap: () => Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                    builder: (BuildContext Context) => Wordsletters())),
          ),
          Divider(
            height: 10,
            color: Colors.black,
          ),
          ListTile(
            title: const Text(
              'Company Profile',
              style: TextStyle(fontFamily: 'robot',color: Colors.white),
            ),
            onTap: () => Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                    builder: (BuildContext Context) => CompanyProfile())),
          ),
          Divider(
            height: 10,
            color: Colors.black,
          ),
          ListTile(
            title: const Text(
              'Personal Profile',
              style: TextStyle(fontFamily: 'robot',color: Colors.white),
            ),
            onTap: () => Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                    builder: (BuildContext Context) => MyProfile())),
          ),
          Divider(
            height: 20,
            color: Colors.black,
          )
        ],
      ),
    );
  }
}
