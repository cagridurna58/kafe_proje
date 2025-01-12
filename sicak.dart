import 'package:flutter/material.dart';
import 'sepetekrani.dart'; // Sepet sayfasını içeri aktarın
import 'siparis.dart'; // Sipariş sınıfını içeri aktarın

class SicakIcecekler extends StatefulWidget {
  @override
  _SicakIceceklerState createState() => _SicakIceceklerState();
}

class _SicakIceceklerState extends State<SicakIcecekler> {
  final Map<String, int> itemCounts = {
    "Çay": 0,
    "Cappucino": 0,
    "Türk Kahvesi": 0,
    "Mocha": 0,
    "Espresso": 0,
    "Cortado": 0,
    "Sıcak Çikolata": 0,
    "Sahlep": 0,
    "Latte": 0,
    "White Chocolate Mocha": 0,
    "Kuşburnu Çayı": 0,
    "Miel": 0,
    "Ihlamur": 0,
  };

  final Map<String, double> itemPrices = {
    "Çay": 10.0,
    "Cappucino": 25.0,
    "Türk Kahvesi": 20.0,
    "Mocha": 30.0,
    "Espresso": 18.0,
    "Cortado": 22.0,
    "Sıcak Çikolata": 15.0,
    "Sahlep": 12.0,
    "Latte": 28.0,
    "White Chocolate Mocha": 35.0,
    "Kuşburnu Çayı": 10.0,
    "Miel": 40.0,
    "Ihlamur": 10.0,

  };

  final Map<String, String> itemImage = {
    "Çay": "assets/images/cay.jpg",
    "Cappucino": "assets/images/cappucino.jpg",
    "Türk Kahvesi": "assets/images/türkkahvesi.jpg",
    "Mocha": "assets/images/mocha.jpg",
    "Espresso": "assets/images/espresso.jpg",
    "Cortado": "assets/images/cortado.jpg",
    "Sıcak Çikolata": "assets/images/sıcakcikolata.jpg",
    "Sahlep": "assets/images/sahlep.jpg",
    "Latte": "assets/images/latte.jpg",
    "White Chocolate Mocha": "assets/images/wchmocha.jpg",
    "Kuşburnu Çayı": "assets/images/kusburnu.jpg",
    "Miel": "assets/images/miel.jpg",
    "Ihlamur": "assets/images/ıhlamur.jpg",
  };

  List<Siparis> siparisListesi = [];

  void updateCount(String itemName, int change) {
    setState(() {
      itemCounts[itemName] = (itemCounts[itemName]! + change).clamp(0, 100);
    });
  }

  void addToCart(String itemName) {
    if (itemCounts[itemName]! > 0) {
      setState(() {
        siparisListesi.add(Siparis(
          urunAdi: itemName,
          miktar: itemCounts[itemName]!,
          fiyat: itemPrices[itemName]!,
        ));
      });
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('$itemName sepete eklendi!')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('SICAK İÇECEKLER'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: itemCounts.keys.map((itemName) {
                return Card(
                  margin: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                  elevation: 4,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  child: ListTile(
                    contentPadding: EdgeInsets.all(10),
                    leading: Image.asset(itemImage[itemName]!, width: 50, height: 50),
                    title: Text(itemName),
                    subtitle: Text("Fiyat: ₺${itemPrices[itemName]?.toStringAsFixed(2)}"),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        GestureDetector(
                          onTap: () => updateCount(itemName, -1),
                          child: Icon(Icons.remove),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text('${itemCounts[itemName]}'),
                        ),
                        GestureDetector(
                          onTap: () => updateCount(itemName, 1),
                          child: Icon(Icons.add),
                        ),
                        IconButton(
                          icon: Icon(Icons.shopping_cart),
                          onPressed: () => addToCart(itemName),
                        ),
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SepetSayfasi(siparisListesi: siparisListesi),
                  ),
                );
              },
              child: Text("Sepete Git"),
            ),
          ),
        ],
      ),
    );
  }
}
