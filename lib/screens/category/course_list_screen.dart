import 'package:flutter/material.dart';

class CourseListScreen extends StatelessWidget {
  final String category;

  CourseListScreen({required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$category Courses'),
        backgroundColor: Color(0xFF0C042E),
      ),
      body: Center(
        child: Text('List of $category courses'),
      ),
    );
  }
}
