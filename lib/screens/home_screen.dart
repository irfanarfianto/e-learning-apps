import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final String userName = "John Doe"; // Ganti dengan nama pengguna yang sesuai

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Padding(
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
                    backgroundImage: AssetImage('assets/profile.jpg'),
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
              child: Placeholder(), // Ganti dengan widget Carousel yang sesuai
            ),
            // Tambahkan bagian lainnya sesuai kebutuhan
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        selectedItemColor: Colors.blue,
        currentIndex:
            0, // Ganti sesuai dengan indeks halaman yang ingin ditampilkan
        onTap: (int index) {
          // Handle navigasi ketika item bottom navigation bar ditekan
          // Misalnya, menggunakan Navigator untuk pindah halaman
          // Navigator.of(context).pushNamed('/halaman_ke-${index + 1}');
        },
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      home: HomeScreen(),
    ),
  );
}
