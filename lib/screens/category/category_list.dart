import 'package:flutter/material.dart';
import 'course_list_screen.dart';

class CategoryList extends StatelessWidget {
  final List<String> categories = [
    'Programming',
    'Design',
    'Data Science',
    'Business',
    'Language Learning',
    'Other',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60, // Set the desired height for the row
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(
          categories.length,
          (index) => Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        CourseListScreen(category: categories[index]),
                  ),
                );
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                decoration: BoxDecoration(
                  color: Colors.blue, // Adjust the color as needed
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Text(
                    categories[index],
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'DM Sans',
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
