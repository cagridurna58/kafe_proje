import 'package:flutter/material.dart';
import 'sepetekrani.dart'; // Sepet sayfasını içeri aktarın
import 'siparis.dart'; // Sipariş sınıfını içeri aktarın

class Atistirmaliklar extends StatefulWidget {
  @override
  _AtistirmaliklarState createState() => _AtistirmaliklarState();
}

class _AtistirmaliklarState extends State<Atistirmaliklar> {
  final Map<String, int> itemCounts = {
    "Tereyağlı Kruvasan": 0,
    "Dereotlu Poğaça": 0,
    "Sucuklu Tost": 0,
    "İçli Kete": 0,
    "Boyoz": 0,
    "Kaşarlı Tost": 0,
    "Çikolata Dolgulu Kruvasan": 0,
  };

  final Map<String, String> itemImage = {
    "Tereyağlı Kruvasan": "assets/images/yaglikruvasan.jpg",
    "Dereotlu Poğaça": "assets/images/poğaça.jpg",
    "Sucuklu Tost": "assets/images/sucuklutost.jpg",
    "İçli Kete": "assets/images/kete.jpg",
    "Boyoz": "assets/images/boyoz.jpg",
    "Kaşarlı Tost": "assets/images/kaşarlıtost.jpg",
    "Çikolata Dolgulu Kruvasan": "assets/images/çikolatalıkruvasan.jpg",
  };

  final Map<String, double> itemPrices = {
    "Tereyağlı Kruvasan": 15.0,
    "Dereotlu Poğaça": 10.0,
    "Sucuklu Tost": 25.0,
    "İçli Kete": 12.0,
    "Boyoz": 8.0,
    "Kaşarlı Tost": 20.0,
    "Çikolata Dolgulu Kruvasan": 18.0,
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
        title: Text('ATIŞTIRMALIKLAR'),
        backgroundColor: Colors.purple,
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
                    leading: itemImage[itemName] != null
                        ? Image.asset(itemImage[itemName]!, width: 50, height: 50)
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
