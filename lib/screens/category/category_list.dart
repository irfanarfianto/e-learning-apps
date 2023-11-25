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
      height: 40, // Set the desired height for the row
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(
          categories.length,
          (index) => Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.0),
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
                padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 0.2),
                  borderRadius: BorderRadius.circular(50),
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
