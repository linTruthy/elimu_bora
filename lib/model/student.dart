// models.dart

import 'package:elimu_bora/model/course.dart';

class Student {
  final String id;
  final String name;
  final String grade;
  final List<Course> courses;

  Student({
    required this.id,
    required this.name,
    required this.grade,
    required this.courses,
  });

  factory Student.fromJson(Map<String, dynamic> json) {
    return Student(
      id: json['id'],
      name: json['name'],
      grade: json['grade'],
      courses: (json['courses'] as List)
          .map((course) => Course.fromJson(course))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'grade': grade,
      'courses': courses.map((course) => course.toJson()).toList(),
    };
  }
}






