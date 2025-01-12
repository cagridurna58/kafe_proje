import 'package:flutter/material.dart';
import 'package:projem/siparisekrani.dart';



class masaNumarasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Masa Numarası Seçiniz'),
          backgroundColor: Colors.deepPurpleAccent,
        ),
        body: Column(
          children: [
            Container(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(400, 50),
                  backgroundColor: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,  // Ortalar
                  children: [
                    Text(
                      '1',
                      style: TextStyle(color: Colors.black),
                    ),
                    Icon(
                      Icons.arrow_forward,  // Ok simgesi
                      color: Colors.black,   // Simge rengi
                    ),
                  ],
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Siparisekrani(),
                    ),
                  );
                },
              ),
            ),
            SizedBox.fromSize(size: Size(0, 20),),
            Container(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(400, 50),
                  backgroundColor: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,  // Ortalar
                  children: [
                    Text(
                      '2',
                      style: TextStyle(color: Colors.black),
                    ),
                    Icon(
                      Icons.arrow_forward,  // Ok simgesi
                      color: Colors.black,   // Simge rengi
                    ),
                  ],
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Siparisekrani(),
                    ),
                  );
                },
              ),
            ),
            SizedBox.fromSize(size: Size(0, 20),),
            Container(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(400, 50),
                  backgroundColor: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,  // Ortalar
                  children: [
                    Text(
                      '3',
                      style: TextStyle(color: Colors.black),
                    ),
                    Icon(
                      Icons.arrow_forward,  // Ok simgesi
                      color: Colors.black,   // Simge rengi
                    ),
                  ],
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Siparisekrani(),
                    ),
                  );
                },
              ),
            ),
            SizedBox.fromSize(size: Size(0, 20),),
            Container(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(400, 50),
                  backgroundColor: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,  // Ortalar
                  children: [
                    Text(
                      '4',
                      style: TextStyle(color: Colors.black),
                    ),
                    Icon(
                      Icons.arrow_forward,  // Ok simgesi
                      color: Colors.black,   // Simge rengi
                    ),
                  ],
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Siparisekrani(),
                    ),
                  );
                },
              ),
            ),
            SizedBox.fromSize(size: Size(0, 20),),
            Container(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(400, 50),
                  backgroundColor: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,  // Ortalar
                  children: [
                    Text(
                      '5',
                      style: TextStyle(color: Colors.black),
                    ),
                    Icon(
                      Icons.arrow_forward,  // Ok simgesi
                      color: Colors.black,   // Simge rengi
                    ),
                  ],
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Siparisekrani(),
                    ),
                  );
                },
              ),
            ),
            SizedBox.fromSize(size: Size(0, 20),),
            Container(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(400, 50),
                  backgroundColor: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,  // Ortalar
                  children: [
                    Text(
                      '6',
                      style: TextStyle(color: Colors.black),
                    ),
                    Icon(
                      Icons.arrow_forward,  // Ok simgesi
                      color: Colors.black,   // Simge rengi
                    ),
                  ],
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Siparisekrani(),
                    ),
                  );
                },
              ),
            ),
            SizedBox.fromSize(size: Size(0, 20),),
            Container(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(400, 50),
                  backgroundColor: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,  // Ortalar
                  children: [
                    Text(
                      '7',
                      style: TextStyle(color: Colors.black),
                    ),
                    Icon(
                      Icons.arrow_forward,  // Ok simgesi
                      color: Colors.black,   // Simge rengi
                    ),
                  ],
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Siparisekrani(),
                    ),
                  );
                },
              ),
            ),
            SizedBox.fromSize(size: Size(0, 20),),
            Container(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(400, 50),
                  backgroundColor: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,  // Ortalar
                  children: [
                    Text(
                      '8',
                      style: TextStyle(color: Colors.black),
                    ),
                    Icon(
                      Icons.arrow_forward,  // Ok simgesi
                      color: Colors.black,   // Simge rengi
                    ),
                  ],
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Siparisekrani(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
