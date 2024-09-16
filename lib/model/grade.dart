// models.dart

class Grade {
  final String id;
  final String studentId;
  final String courseId;
  final String assignmentId;
  final double score;
  final String letterGrade;

  Grade({
    required this.id,
    required this.studentId,
    required this.courseId,
    required this.assignmentId,
    required this.score,
    required this.letterGrade,
  });

  factory Grade.fromJson(Map<String, dynamic> json) {
    return Grade(
      id: json['id'],
      studentId: json['studentId'],
      courseId: json['courseId'],
      assignmentId: json['assignmentId'],
      score: json['score'],
      letterGrade: json['letterGrade'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'studentId': studentId,
      'courseId': courseId,
      'assignmentId': assignmentId,
      'score': score,
      'letterGrade': letterGrade,
    };
  }
}
