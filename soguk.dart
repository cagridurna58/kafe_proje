import 'package:flutter/material.dart';
import 'sepetekrani.dart'; // Sepet sayfasını içeri aktarın
import 'siparis.dart'; // Sipariş sınıfını içeri aktarın

class SogukIcecekler extends StatefulWidget {
  @override
  _SogukIceceklerState createState() => _SogukIceceklerState();
}

class _SogukIceceklerState extends State<SogukIcecekler> {
  final Map<String, int> itemCounts = {
    "Soda": 0,
    "Çikolatalı Milkshake": 0,
    "Çilekli Milkshake": 0,
    "Hibiscus": 0,
    "Vanilia Milkshake": 0,
    "Granada Lemonade": 0,
    "Orman Meyveli Frozen": 0,
    "Mangolu Frozen": 0,
    "Melon Peach Bubble": 0,
    "Melon Peach Freshaa": 0,
    "Su": 0,
  };

  final Map<String, String> itemImages = {
    "Soda": "assets/images/soda.jpg",
    "Çikolatalı Milkshake": "assets/images/chocalatemilkshake.jpg",
    "Çilekli Milkshake": "assets/images/çileklimilkshake.jpg",
    "Hibiscus": "assets/images/hibiscus.jpg",
    "Vanilia Milkshake": "assets/images/vaniliamilkshake.jpg",
    "Granada Lemonade": "assets/images/granadalemonade.jpg",
    "Orman Meyveli Frozen": "assets/images/ormanmeyvelifrozen.jpg",
    "Mangolu Frozen": "assets/images/mangolufrozen.jpg",
    "Melon Peach Bubble": "assets/images/melonpeachbubble.jpg",
    "Melon Peach Freshaa": "assets/images/melonpeachfreshaa.jpg",
    "Su": "assets/images/su.jpg",
  };

  final Map<String, double> itemPrices = {
    "Soda": 30.0,
    "Çikolatalı Milkshake": 80.0,
    "Çilekli Milkshake": 80.0,
    "Hibiscus": 70.0,
    "Vanilia Milkshake": 80.0,
    "Granada Lemonade": 70.0,
    "Orman Meyveli Frozen": 70.0,
    "Mangolu Frozen": 70.0,
    "Melon Peach Bubble": 80.0,
    "Melon Peach Freshaa": 70.0,
    "Su": 15.0,
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
        title: Text('SOĞUK İÇECEKLER'),
        backgroundColor: Colors.blue,
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
                    leading: itemImages[itemName] != null
                        ? Image.asset(itemImages[itemName]!, width: 50, height: 50)
                        : Icon(Icons.image), // Varsayılan bir ikon göster
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
