
class Attendance {
  final String id;
  final String studentId;
  final String courseId;
  final DateTime date;
  final AttendanceStatus status;

  Attendance({
    required this.id,
    required this.studentId,
    required this.courseId,
    required this.date,
    required this.status,
  });

  factory Attendance.fromJson(Map<String, dynamic> json) {
    return Attendance(
      id: json['id'],
      studentId: json['studentId'],
      courseId: json['courseId'],
      date: DateTime.parse(json['date']),
      status: AttendanceStatus.values.firstWhere(
          (e) => e.toString() == 'AttendanceStatus.${json['status']}'),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'studentId': studentId,
      'courseId': courseId,
      'date': date.toIso8601String(),
      'status': status.toString().split('.').last,
    };
  }
}

enum AttendanceStatus { present, absent, late }
