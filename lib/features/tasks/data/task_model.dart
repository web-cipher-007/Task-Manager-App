import 'package:intl/intl.dart';

class TaskModel {
  final int id;
  final String title;
  final String description;
  final String status;
  final DateTime dueDate;
  final String userId;

  TaskModel({
    required this.id,
    required this.title,
    required this.description,
    required this.status,
    required this.dueDate,
    required this.userId,
  });


  factory TaskModel.fromJson(Map<String, dynamic> json) {
    final dateFormat = DateFormat('yyyy-MM-ddTHH:mm:ss');
    return TaskModel(
      id: json['id'] as int,
      title: json['title'] as String,
      description: json['description'] as String,
      status: json['status'] as String,
      dueDate: dateFormat.parse(json['due_date'] as String, true),
      userId: json['user_id'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    final dateFormat = DateFormat('yyyy-MM-ddTHH:mm:ss');
    return {
      'id': id,
      'title': title,
      'description': description,
      'status': status,
      'due_date': dateFormat.format(dueDate),
      'user_id': userId,
    };
  }
}
