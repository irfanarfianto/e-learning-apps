import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

class HomeScreen extends StatelessWidget {
  final String userName =
      "Irfan Arfianto"; // Ganti dengan nama pengguna yang sesuai

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text(
        //     'E-Learning App',
        //     style: TextStyle(
        //       color: Color(0xFFE4F1F8),
        //       fontSize: 17.0,
        //       fontFamily: 'DM Sans',
        //       fontWeight: FontWeight.w500,
        //     ),
        //   ),
        //   backgroundColor: Color(0xFF0C042E),
        // ),
        body: Container(
          decoration: BoxDecoration(color: Color(0xFF0C042E)),
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Header Section with User Name and Profile Photo
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Color(0xFF543EE9),
                  borderRadius: BorderRadius.circular(17.0),
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 24,
                      // Ganti dengan foto profil pengguna
                      backgroundImage: AssetImage('assets/profile.JPG'),
                    ),
                    SizedBox(width: 16),
                    Text(
                      'Hello, $userName!',
                      style: TextStyle(
                        color: Color(0xFFE4F1F8),
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              // Carousel Section
              Container(
                height: 200, // Sesuaikan tinggi carousel sesuai kebutuhan
                color: Color(
                    0xFF543EE9), // Ganti dengan warna latar belakang yang sesuai
                child: Center(
                  child: Text(
                    'Ganti dengan widget Carousel',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              // Tambahkan bagian lainnya sesuai kebutuhan
            ],
          ),
        ),
        bottomNavigationBar: ConvexAppBar(
          style: TabStyle.fixedCircle,
          height: 60,
          curveSize: 100,
          backgroundColor: Color(0xFF0C042E),
          color: Color.fromARGB(255, 31, 31, 32),
          items: [
            TabItem(icon: Icons.home, title: 'Home'),
            TabItem(icon: Icons.book, title: 'Course'),
            TabItem(icon: Icons.search, title: 'Search'),
            TabItem(icon: Icons.message, title: 'Message'),
            TabItem(icon: Icons.people, title: 'Profile'),
          ],
          onTap: (int i) => print('click index=$i'),
        ));
  }
}

void main() {
  runApp(
    MaterialApp(
      home: HomeScreen(),
    ),
  );
}
