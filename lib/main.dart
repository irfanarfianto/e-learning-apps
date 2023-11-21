import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Learning App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'E-Learning App',
            style: TextStyle(
              color: Color(0xFFE4F1F8),
              fontSize: 17.28,
              fontFamily: 'DM Sans',
              fontWeight: FontWeight.w500,
              height: 0,
            ),
          ),
          backgroundColor: Color(0xFF0C042E),
        ),
        body: Container(
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(color: Color(0xFF0C042E)),
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 16.0,
            mainAxisSpacing: 16.0,
            children: [
              // Ganti dengan item-item sesuai kebutuhan
              _buildGridItem('Item 1'),
              _buildGridItem('Item 2'),
              _buildGridItem('Item 3'),
              _buildGridItem('Item 4'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildGridItem(String itemName) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF543EE9),
        borderRadius: BorderRadius.circular(17.0),
      ),
      child: Center(
        child: Text(
          itemName,
          style: TextStyle(
            color: Color(0xFFE4F1F8),
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
