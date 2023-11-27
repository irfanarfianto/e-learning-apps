import 'package:flutter/material.dart';
import 'category/category_list.dart';
import 'carousel/carousel_widget.dart';
import 'course/popular_courses.dart';

void main() {
  runApp(
    MaterialApp(
      home: HomeScreen(),
    ),
  );
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  String userName = 'Irfan';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildScreen(_currentIndex),
      backgroundColor: Color(0xFF0C042E),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Color(0xFF543EE9),
        unselectedItemColor: Colors.grey,
        backgroundColor: Color(0xFF0C042E),
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Course',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Message',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  Widget _buildScreen(int index) {
    switch (index) {
      case 0:
        return _buildHomeScreen();
      // Tambahkan case untuk setiap tab lainnya
      default:
        return Container(); // Layar dummy untuk tab lainnya
    }
  }

  Widget _buildHomeScreen() {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
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
                    SizedBox(width: 180),
                    Align(
                      alignment: Alignment.centerRight,
                      child: CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage('assets/profile.JPG'),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
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
                            Container(
                              width: double.infinity,
                              child: LinearProgressIndicator(
                                value: 0.9,
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  Color(0xFF543EE9),
                                ),
                                backgroundColor: Colors.white.withOpacity(0.3),
                                minHeight: 5,
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
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
              // SizedBox(height: 20),
              // CategoryList(),
              SizedBox(height: 20),
              CarouselWidget(),
              SizedBox(height: 20),
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
              Container(
                child: PopularCoursesSlider(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
