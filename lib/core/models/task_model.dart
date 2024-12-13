import 'dart:convert';

class TaskModel {
  final int id;
  final String title;
  final String description;
  final DateTime dueDate;
  final bool isCompleted;
  final String assignedTo;
  final DateTime startedAt;
  final double percent;
  final int status;

  TaskModel(
      {required this.id,
      required this.title,
      required this.description,
      required this.dueDate,
      required this.isCompleted,
      required this.assignedTo,
      required this.startedAt,
      required this.percent,
      required this.status});

  TaskModel copyWith({
    int? id,
    String? title,
    String? description,
    DateTime? dueDate,
    bool? isCompleted,
    String? assignedTo,
    DateTime? startedAt,
    double? percent,
    int? status,
  }) {
    return TaskModel(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      dueDate: dueDate ?? this.dueDate,
      isCompleted: isCompleted ?? this.isCompleted,
      assignedTo: assignedTo ?? this.assignedTo,
      startedAt: startedAt ?? this.startedAt,
      percent: percent ?? this.percent,
      status: status ?? this.status,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'description': description,
      'dueDate': dueDate.millisecondsSinceEpoch,
      'isCompleted': isCompleted,
      'assignedTo': assignedTo,
      'startedAt': startedAt.millisecondsSinceEpoch,
      'percent': percent,
      'status': status
    };
  }

  factory TaskModel.fromMap(Map<String, dynamic> map) {
    return TaskModel(
      id: map['id'] as int,
      title: map['title'] as String,
      description: map['description'] as String,
      dueDate: DateTime.fromMillisecondsSinceEpoch(map['dueDate'] as int),
      isCompleted: map['isCompleted'] as bool,
      assignedTo: map['assignedTo'] as String,
      startedAt: DateTime.fromMillisecondsSinceEpoch(map['startedAt'] as int),
      percent: map['percent'] as double,
      status: map['status'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory TaskModel.fromJson(String source) =>
      TaskModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
