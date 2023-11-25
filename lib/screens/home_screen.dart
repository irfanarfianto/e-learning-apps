import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'category/category_list.dart';
import 'carousel/carousel_widget.dart';
import 'course/popular_courses.dart';

class HomeScreen extends StatelessWidget {
  final String userName = "Irfan"; // Ganti dengan nama pengguna yang sesuai

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0C042E),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Header Section with User Name and Profile Photo
              Container(
                child: Row(
                  children: [
                    Flexible(
                      child: Text.rich(
                        TextSpan(
                          text: 'Hi, $userName\n',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontFamily: 'DM Sans',
                            fontWeight: FontWeight.w500,
                            letterSpacing: -0.90,
                          ),
                          children: [
                            TextSpan(
                              text: 'Let’s start learning',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'DM Sans',
                                fontWeight: FontWeight.w500,
                                letterSpacing: -0.14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 173),
                    Align(
                      alignment: Alignment.centerRight,
                      child: CircleAvatar(
                        radius: 20,
                        // Ganti dengan foto profil pengguna
                        backgroundImage: AssetImage('assets/profile.JPG'),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              // Learned Today Section
              Card(
                color: Color(0xFF0C042E),
                shadowColor: Colors.black,
                elevation: 2,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(children: [
                              Text(
                                'Learned Today',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontFamily: 'DM Sans',
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: -0.14,
                                ),
                              ),
                              Spacer(),
                              Text(
                                'My Courses',
                                style: TextStyle(
                                  color: Color(0xFF543EE9),
                                  fontSize: 14,
                                  fontFamily: 'DM Sans',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ]),

                            SizedBox(height: 4),
                            Row(
                              children: [
                                Text(
                                  '42min ',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontFamily: 'DM Sans',
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: -0.90,
                                  ),
                                ),
                                Text(
                                  '/ 60min',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontFamily: 'DM Sans',
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: -0.14,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 8),
                            // Bar panjang di bawah menit
                            Container(
                              width:
                                  double.infinity, // Menggunakan lebar maksimum
                              child: LinearProgressIndicator(
                                value:
                                    0.9, // Ganti nilai sesuai dengan panjang yang diinginkan
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  Color(0xFF543EE9),
                                ),
                                backgroundColor: Colors.white.withOpacity(0.3),
                                minHeight: 5, // Sesuaikan tinggi progress bar
                                borderRadius: BorderRadius.circular(
                                    5), // Ujung (rounded) dari progress bar
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // carousel section
              SizedBox(height: 20),
              CarouselWidget(),
              SizedBox(height: 20),
              // category menu
              Text(
                'Category',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'DM Sans',
                  fontWeight: FontWeight.w500,
                  letterSpacing: -0.60,
                ),
              ),
              SizedBox(height: 20),
              CategoryList(),
              SizedBox(height: 20),
              // Popular Course Section
              Text(
                'Popular Course',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'DM Sans',
                  fontWeight: FontWeight.w500,
                  letterSpacing: -0.60,
                ),
              ),
              SizedBox(height: 20),
              // List of Popular Course
              PopularCourses(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: ConvexAppBar(
        style: TabStyle.fixedCircle,
        height: 80,
        curveSize: 50,
        activeColor: Color(0xFF543EE9),
        backgroundColor: Color(0xFF0C042E),
        color: Color(0xFFE4F1F8),
        items: [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.book, title: 'Course'),
          TabItem(icon: Icons.search, title: 'Search'),
          TabItem(icon: Icons.message, title: 'Message'),
          TabItem(icon: Icons.person, title: 'Profile'),
        ],
        initialActiveIndex: 0,
        onTap: (int i) => print('click index=$i'),
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
