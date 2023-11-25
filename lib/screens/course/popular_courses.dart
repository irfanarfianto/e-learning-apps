import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class SimpleCourseCard extends StatelessWidget {
  final String title;
  final double rating;
  final String price;
  final String user;
  final String imagePath;

  SimpleCourseCard({
    required this.title,
    required this.rating,
    required this.price,
    required this.user,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print('Card pressed: $title');
      },
      child: Card(
        elevation: 4,
        color: Color(0xFF0C042E),
        shadowColor: Colors.black,
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(10.0)),
                    image: DecorationImage(
                      image: AssetImage(imagePath),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'DM Sans',
                          fontWeight: FontWeight.w500,
                          letterSpacing: -0.14,
                        ),
                      ),
                      SizedBox(height: 4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '$user',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: 'DM Sans',
                              fontWeight: FontWeight.w400,
                              letterSpacing: -0.12,
                            ),
                          ),
                          Text(
                            '$price',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'DM Sans',
                              fontWeight: FontWeight.bold,
                              letterSpacing: -0.12,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              top: 8,
              right: 8,
              child: Container(
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: Color(0xFF543EE9), // Adjust color as needed
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.white,
                      size: 16,
                    ),
                    SizedBox(width: 8),
                    Text(
                      '$rating',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontFamily: 'DM Sans',
                        fontWeight: FontWeight.w400,
                        letterSpacing: -0.12,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PopularCoursesSlider extends StatelessWidget {
  final List<Map<String, String>> courses = [
    {
      'title': 'UI Design: Wireframe to Visual Design',
      'rating': '4.5',
      'price': 'Rp: 19.999',
      'user': 'Irfan Maulana',
      'imagePath': 'assets/pop1.jpg',
    },
    {
      'title': 'Mobile App Development with Flutter',
      'rating': '4.8',
      'price': 'Rp: 29.999',
      'user': 'John Doe',
      'imagePath': 'assets/pop2.jpg',
    },
    {
      'title': 'Introduction to Python Programming',
      'rating': '4.2',
      'price': 'Rp: 14.999',
      'user': 'Jane Smith',
      'imagePath': 'assets/pop3.jpg',
    },
    // Add more courses as needed
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      options: CarouselOptions(
        height: 265.0,
        enableInfiniteScroll: false,
        viewportFraction: 0.7,
      ),
      itemCount: courses.length,
      itemBuilder: (BuildContext context, int index, int realIndex) {
        final course = courses[index];
        return Container(
          margin: EdgeInsets.symmetric(
              horizontal: 2.0), // Adjust the spacing as needed
          child: SimpleCourseCard(
            title: course['title']!,
            rating: double.parse(course['rating']!),
            price: course['price']!,
            user: course['user']!,
            imagePath: course['imagePath']!,
          ),
        );
      },
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Popular Courses'),
          backgroundColor: Color(0xFF0C042E),
        ),
        body: PopularCoursesSlider(),
      ),
    ),
  );
}
