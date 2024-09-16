// models.dart

class Teacher {
  final String id;
  final String name;
  final List<String> subjectsTaught;

  Teacher({
    required this.id,
    required this.name,
    required this.subjectsTaught,
  });

  factory Teacher.fromJson(Map<String, dynamic> json) {
    return Teacher(
      id: json['id'],
      name: json['name'],
      subjectsTaught: List<String>.from(json['subjectsTaught']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'subjectsTaught': subjectsTaught,
    };
  }
}
