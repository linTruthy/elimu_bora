class Assignment {
  final String id;
  final String title;
  final String description;
  final DateTime dueDate;
  final AssignmentStatus status;

  Assignment({
    required this.id,
    required this.title,
    required this.description,
    required this.dueDate,
    required this.status,
  });

  factory Assignment.fromJson(Map<String, dynamic> json) {
    return Assignment(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      dueDate: DateTime.parse(json['dueDate']),
      status: AssignmentStatus.values.firstWhere(
          (e) => e.toString() == 'AssignmentStatus.${json['status']}'),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'dueDate': dueDate.toIso8601String(),
      'status': status.toString().split('.').last,
    };
  }
}

enum AssignmentStatus { pending, submitted, graded }
