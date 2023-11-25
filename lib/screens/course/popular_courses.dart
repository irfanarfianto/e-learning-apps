import 'package:flutter/material.dart';

class PopularCourses extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          // Course 1
          buildCourseCard(
            'UI Design: Wireframe to Visual Design',
            'Learn how to design a beautiful and engaging mobile app with Figma. I will walk you step by step from wireframing to visual design.',
            'assets/course1.jpg',
          ),
          SizedBox(height: 16),
          // Course 2
          buildCourseCard(
            'UI Design: Wireframe to Visual Design',
            'Learn how to design a beautiful and engaging mobile app with Figma. I will walk you step by step from wireframing to visual design.',
            'assets/course2.jpg',
          ),
          SizedBox(height: 16),
          // Course 3
          buildCourseCard(
            'UI Design: Wireframe to Visual Design',
            'Learn how to design a beautiful and engaging mobile app with Figma. I will walk you step by step from wireframing to visual design.',
            'assets/course3.jpg',
          ),
          SizedBox(height: 16),
          // Course 4
          buildCourseCard(
            'UI Design: Wireframe to Visual Design',
            'Learn how to design a beautiful and engaging mobile app with Figma. I will walk you step by step from wireframing to visual design.',
            'assets/course4.jpg',
          ),
          SizedBox(height: 16),
          // Course 5
          buildCourseCard(
            'UI Design: Wireframe to Visual Design',
            'Learn how to design a beautiful and engaging mobile app with Figma. I will walk you step by step from wireframing to visual design.',
            'assets/course5.jpg',
          ),
        ],
      ),
    );
  }

  Widget buildCourseCard(String title, String description, String imagePath) {
    return Card(
      color: Color(0xFF0C042E),
      shadowColor: Colors.black,
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            // Course Image
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 16),
            // Course Description
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'DM Sans',
                      fontWeight: FontWeight.w500,
                      letterSpacing: -0.14,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    description,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontFamily: 'DM Sans',
                      fontWeight: FontWeight.w400,
                      letterSpacing: -0.12,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'by Irfan Maulana',
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
          ],
        ),
      ),
    );
  }
}
