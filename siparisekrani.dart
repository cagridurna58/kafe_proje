import 'package:flutter/material.dart';
import 'package:projem/atistirma.dart';
import 'package:projem/sicak.dart';
import 'package:projem/soguk.dart';
import 'package:projem/tatli.dart';


class Siparisekrani extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('SİPARİŞ MENÜSÜ',style: TextStyle(color: Colors.black),),
      ),
      body: Siparislistesi(),
    );
  }
}

class Siparislistesi extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(10),
      children: [
        GestureDetector(

          child: Card(
            margin: EdgeInsets.symmetric(horizontal: 8),
            elevation: 4,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: ListTile(
              contentPadding: EdgeInsets.all(10),
              leading: ClipOval(
                child: Image.asset("assets/images/sogukluk.jpg",
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),


              ),
              title: Text("SOĞUK İÇECEKLER"),
              trailing: Icon(Icons.arrow_forward, color: Colors.brown[600]),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SogukIcecekler(),
                  ),
                );
              },
            ),
          ),
        ),
        SizedBox(height: 10,),
        GestureDetector(
          child: Card(
            margin: EdgeInsets.symmetric(horizontal: 8),
            elevation: 4,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: ListTile(
              contentPadding: EdgeInsets.all(10),
              leading: ClipOval(
                child: Image.asset("assets/images/cay.jpg",
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),


              ),
              title: Text("SICAK İÇECEKLER"),
              trailing: Icon(Icons.arrow_forward, color: Colors.brown[600]),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SicakIcecekler(),
                  ),
                );
              },
            ),
          ),
        ),
        SizedBox(height: 10,),
        GestureDetector(
          child: Card(
            margin: EdgeInsets.symmetric(horizontal: 8),
            elevation: 4,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: ListTile(
              contentPadding: EdgeInsets.all(10),
              leading: ClipOval(
                child: Image.asset("assets/images/tatli.jpg",
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),


              ),
              title: Text("TATLILAR"),
              trailing: Icon(Icons.arrow_forward, color: Colors.brown[600]),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Tatlilar(),
                  ),
                );
              },
            ),
          ),
        ),
        SizedBox(height: 10,),
        Card(
          margin: EdgeInsets.symmetric(horizontal: 8),
          elevation: 4,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: ListTile(
            contentPadding: EdgeInsets.all(10),
            leading:ClipOval(
              child: Image.asset("assets/images/atıştırmalık.jpg",
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),


            ),
            title: Text("ATIŞTIRMALIKLAR"),
            trailing: Icon(Icons.arrow_forward, color: Colors.brown[600]),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Atistirmaliklar(),
                ),
              );
            },
          ),
        ),
      ],

    );
  }
}

