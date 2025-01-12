import 'package:flutter/material.dart';
import 'package:projem/masaNo.dart';
import 'package:projem/siparisekrani.dart';
import 'package:projem/splashscreen.dart';
import 'package:projem/subeler.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),


    );
  }
}

class BenimUyg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 54, 17, 5),
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  radius: 70,
                  backgroundColor: Colors.lime,
                  backgroundImage: AssetImage('assets/images/türkkahvesi.jpg'),
                ),
                Text(
                  "Coffee Durna",
                  style: TextStyle(
                      fontFamily: 'Dtech',
                      fontSize: 50, color: Colors.yellow),
                ),
                Text(
                  "KIRK YIL HATRI OLSUN",
                  style: TextStyle(fontFamily: 'Dtech',fontSize: 20, color: Colors.white),
                ),
                Container(
                  padding: EdgeInsets.all(10.0),
                  margin: EdgeInsets.symmetric(horizontal: 45.0),
                  color: const Color.fromARGB(255, 0, 0, 0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.email,
                        color: Colors.lime,
                      ),
                      SizedBox(
                        width: 6.0,
                      ),
                      Text(
                        'coffeedurna58@gmail.com',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.all(10.0),
                  margin: EdgeInsets.symmetric(horizontal: 45.0),
                  color: Colors.black,
                  child: Row(
                    children: [
                      Icon(
                        Icons.phone,
                        color: Colors.lime,
                      ),
                      Text(
                        '05524825968',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(400, 50),
                      backgroundColor: Colors.white,
                    ),
                    child: Text(
                      'ŞUBELERİMİZ',
                      style: TextStyle(color:const Color.fromARGB(255, 14, 5, 149)),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Subeler(),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(400, 50),
                      backgroundColor: Colors.white,
                    ),
                    child: Text(
                      'SİPARİŞ EKRANI',
                      style: TextStyle(color: const Color.fromARGB(255, 14, 5, 149)),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => masaNumarasi(),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class siparisekrani extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return siparisekrani();
  }
}


