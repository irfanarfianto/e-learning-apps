import 'package:flutter/material.dart';
import '../../color/app_colors.dart';

class CourseDetails extends StatelessWidget {
  final String title;
  final double rating;
  final String price;
  final String user;
  final String imagePath;

  CourseDetails({
    required this.title,
    required this.rating,
    required this.price,
    required this.user,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: AppColors.primaryColor,
        title: Text(
          'Course Details',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white, // Sesuaikan warna teks sesuai kebutuhan
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Image.asset(
                imagePath,
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 16),
            Text(
              title,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  user,
                  style: TextStyle(fontSize: 16, color: Colors.white70),
                ),
                Text(
                  price,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color:
                        Colors.white, // Sesuaikan warna teks sesuai kebutuhan
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 24,
                ),
                SizedBox(width: 8),
                Text(
                  '$rating',
                  style: TextStyle(
                    fontSize: 18,
                    color:
                        Colors.white, // Sesuaikan warna teks sesuai kebutuhan
                  ),
                ),
              ],
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                // buatkan agar pindah ke halaman myApp
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => HomeScreen()),
                // );
              },
              style: ElevatedButton.styleFrom(
                //color button
                primary: Color(0xFF543EE9),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                minimumSize: Size(double.infinity, 50), // Tinggi tombol
              ),
              child: Text(
                'Daftar Sekarang',
                style: TextStyle(color: Color(0xFFE4F1F8), fontSize: 18),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: AppColors.primaryColor,
    );
  }
}
