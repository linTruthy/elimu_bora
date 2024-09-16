// models.dart

import 'package:elimu_bora/model/assignment.dart';


class Course {
  final String id;
  final String name;
  final String teacherId;
  final List<Assignment> assignments;

  Course({
    required this.id,
    required this.name,
    required this.teacherId,
    required this.assignments,
  });

  factory Course.fromJson(Map<String, dynamic> json) {
    return Course(
      id: json['id'],
      name: json['name'],
      teacherId: json['teacherId'],
      assignments: (json['assignments'] as List).map((assignment) => Assignment.fromJson(assignment)).toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'teacherId': teacherId,
      'assignments': assignments.map((assignment) => assignment.toJson()).toList(),
    };
  }
}
