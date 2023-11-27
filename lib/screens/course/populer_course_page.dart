import 'package:e_learning_apps/screens/category/category_list.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../color/app_colors.dart';
import 'course_details.dart';

class PopularCoursePage extends StatelessWidget {
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
    {
      'title': 'Data Science Fundamentals',
      'rating': '4.6',
      'price': 'Rp: 24.999',
      'user': 'Alex Johnson',
      'imagePath': 'assets/pop4.jpg',
    },
    {
      'title': 'Web Development: HTML, CSS, JavaScript',
      'rating': '4.7',
      'price': 'Rp: 22.999',
      'user': 'Emily White',
      'imagePath': 'assets/pop5.jpg',
    },
    {
      'title': 'Android App Design Principles',
      'rating': '4.4',
      'price': 'Rp: 17.999',
      'user': 'Michael Brown',
      'imagePath': 'assets/pop6.jpg',
    },
    {
      'title': 'Machine Learning Basics',
      'rating': '4.9',
      'price': 'Rp: 34.999',
      'user': 'Sophia Davis',
      'imagePath': 'assets/pop7.jpg',
    },
    {
      'title': 'JavaScript Frameworks: React, Angular, Vue',
      'rating': '4.3',
      'price': 'Rp: 21.999',
      'user': 'William Wilson',
      'imagePath': 'assets/pop8.jpg',
    },
    {
      'title': 'Cybersecurity Fundamentals',
      'rating': '4.7',
      'price': 'Rp: 26.999',
      'user': 'Ella Turner',
      'imagePath': 'assets/pop9.jpg',
    },
    {
      'title': 'iOS App Development with Swift',
      'rating': '4.5',
      'price': 'Rp: 31.999',
      'user': 'Liam Thomas',
      'imagePath': 'assets/pop10.jpg',
    },
    // Ad
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: AppColors.primaryColor,
        title: Text(
          'Popular Courses',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(255, 255, 255, 1),
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(FontAwesomeIcons.filter),
            color: Color.fromRGBO(255, 255, 255, 1),
            onPressed: () {
              // Add your filter logic here
            },
          ),
        ],
      ),
      body: Column(
        children: [
          CategoryList(),
          const SizedBox(height: 6),
          Expanded(
            child: ListView.builder(
              itemCount: courses.length,
              itemBuilder: (context, index) {
                return CourseCard(courseData: courses[index]);
              },
            ),
          ),
        ],
      ),
      backgroundColor: AppColors.primaryColor,
    );
  }
}

class CourseCard extends StatelessWidget {
  final Map<String, String> courseData;

  const CourseCard({required this.courseData});

  @override
  Widget build(BuildContext context) {
    final String title = courseData['title']!;
    final String user = courseData['user']!;
    final String price = courseData['price']!;
    final String rating = courseData['rating']!;
    final String imagePath = courseData['imagePath']!;

    return GestureDetector(
      onTap: () {
        // Navigate to the detail page here
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => CourseDetails(
                    title: title,
                    rating: double.parse(rating),
                    price: price,
                    user: user,
                    imagePath: imagePath,
                  )),
        );
      },
      child: Card(
        elevation: 4,
        color: AppColors.primaryColor,
        shadowColor: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 100, // Adjust the width as needed
                height: 100, // Adjust the height as needed
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: AssetImage(imagePath),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'DM Sans',
                        fontWeight: FontWeight.w500,
                        letterSpacing: -0.14,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          user,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'DM Sans',
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.12,
                          ),
                        ),
                        Text(
                          price,
                          style: const TextStyle(
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
              const SizedBox(width: 12),
              Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: AppColors.accentColor, // Adjust color as needed
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.white,
                      size: 16,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      rating,
                      style: const TextStyle(
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
      ),
    );
  }
}
