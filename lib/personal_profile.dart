import 'package:flutter/material.dart';
import 'navigator.dart';
class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:Navigate(),
      appBar: AppBar(
        iconTheme: IconThemeData(
            color: Colors.white
        ),
        backgroundColor: Colors.teal,
        title: Text(
          'Developer Profile',

          style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),
        ),
      ),
      body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               // CircleAvatar(
                 //   radius: 80, backgroundImage: AssetImage('')),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Karthick.V\nVijay Ganapathi.R',
                    style: TextStyle(color: Colors.black, fontSize: 25,fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Flutter Developers',
                    style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 40,
                  width: 300,
                  child: Divider(
                    color: Colors.black,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Card(
                    child: ListTile(
                      leading: Icon(
                        Icons.phone,
                        color: Colors.green,
                      ),
                      title: Text(
                        '+91 9659369237',
                        style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Card(
                    child: ListTile(
                      leading: Icon(
                        Icons.mail,
                        color: Colors.red,
                      ),
                      title: Text(
                        'bscit9706@gmail.com',
                        style: TextStyle(
                            fontSize: 23,fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
