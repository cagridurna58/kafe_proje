import 'package:flutter/material.dart';

class MenuItemCard extends StatelessWidget {
  final String title;
  final String imagePath;
  final double price;
  final int count;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  const MenuItemCard({
    Key? key,
    required this.title,
    required this.imagePath,
    required this.price,
    required this.count,
    required this.onIncrement,
    required this.onDecrement,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      child: ListTile(
        leading: Image.asset(imagePath, width: 50),
        title: Text(title),
        subtitle: Text("₺$price"),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.remove),
                  onPressed: onDecrement,
                ),
                Text('$count'),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: onIncrement,
                ),
              ],
            ),
            Text('₺${(price * count).toStringAsFixed(2)}'),
          ],
        ),
      ),
    );
  }
}
