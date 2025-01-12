import 'package:flutter/material.dart';
import 'siparis.dart'; // Sipariş sınıfını içeri aktarın

class SepetSayfasi extends StatelessWidget {
  final List<Siparis> siparisListesi;

  SepetSayfasi({required this.siparisListesi});

  double calculateTotalPrice() {
    double total = 0.0;
    for (var siparis in siparisListesi) {
      total += siparis.fiyat * siparis.miktar;
    }
    return total;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('Sepetim', style: TextStyle(color: Colors.black)),
      ),
      body: siparisListesi.isEmpty
          ? Center(child: Text("Sepetiniz boş!", style: TextStyle(fontSize: 20)))
          : Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: siparisListesi.length,
              itemBuilder: (context, index) {
                final siparis = siparisListesi[index];
                return Card(
                  margin: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                  elevation: 4,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  child: ListTile(
                    contentPadding: EdgeInsets.all(10),
                    title: Text(siparis.urunAdi),
                    subtitle: Text("Fiyat: ₺${siparis.fiyat.toStringAsFixed(2)}"),
                    trailing: Text("Adet: ${siparis.miktar}"),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              "Toplam Tutar: ₺${calculateTotalPrice().toStringAsFixed(2)}",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: ElevatedButton(
              onPressed: () {
                // Siparişi tamamla işlemi
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Siparişiniz başarıyla tamamlandı!')),
                );
              },
              child: Text("Siparişi Tamamla"),
            ),
          ),
        ],
      ),
    );
  }
}
