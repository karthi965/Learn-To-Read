import 'package:flutter/material.dart';

import 'navigator.dart';

class CompanyProfile extends StatelessWidget {
  const CompanyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Navigate(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.teal,
        title: Text(
          'Company  Profile',
          style:
          TextStyle(color: Colors.white, fontSize: 25, ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('images/tidy logo.jpg'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Tidy Life India Pvt Ltd',
                      style: TextStyle(
                          color: Colors.pink,
                          fontSize: 23,
                          ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 40,
                  width: 300,
                  child: Divider(
                    color: Color(0xff243c63),
                    thickness: 2,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Card(
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.green,
                    ),
                    title: Text(
                      '+91 8610338291',
                      style: TextStyle(
                          color: Colors.black, fontSize: 20, ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Card(
                  child: ListTile(
                    leading: Icon(
                      Icons.mail,
                      color: Colors.red,
                    ),
                    title: Text(
                      'tidylifeindia@gmail.com',
                      style: TextStyle(
                          color: Colors.black, fontSize: 20, ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Card(
                  child: ListTile(
                    leading: Icon(
                      Icons.home,
                      color: Colors.blue,
                    ),
                    title: Text(
                      'No. A3, Mahalakshmi Flats, \n Sivakami Street, \n New Perngalathur, \n Chennai-600063.',
                      style: TextStyle(
                          color: Colors.black, fontSize: 20, ),
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
}
