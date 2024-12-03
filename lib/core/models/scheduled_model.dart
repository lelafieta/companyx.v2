class ScheduledModel {
  final String id;
  final String title;
  final String organizatorName;
  final String description;
  final String emoji; // New field
  final DateTime date;
  final String location;
  final String userId;
  final DateTime createdAt; // New field

  ScheduledModel({
    required this.id,
    required this.title,
    required this.organizatorName,
    required this.description,
    required this.emoji, // Added to constructor
    required this.date,
    required this.location,
    required this.userId,
    required this.createdAt, //  Added to constructor
  });

  ScheduledModel copyWith({
    String? id,
    String? title,
    String? organizatorName,
    String? description,
    String? emoji, // Added to copyWith
    DateTime? date,
    String? location,
    String? userId,
    DateTime? createdAt, // Added to copyWith
  }) {
    return ScheduledModel(
      id: id ?? this.id,
      title: title ?? this.title,
      organizatorName: organizatorName ?? this.organizatorName,
      description: description ?? this.description,
      emoji: emoji ?? this.emoji, // Added to copyWith return
      date: date ?? this.date,
      location: location ?? this.location,
      userId: userId ?? this.userId,
      createdAt: createdAt ?? this.createdAt, // Added to copyWith return
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'organizatorName': organizatorName,
      'description': description,
      'emoji': emoji, // Added to map
      'date': date.millisecondsSinceEpoch,
      'location': location,
      'userId': userId,
      'createdAt': createdAt.millisecondsSinceEpoch, // Added to map
    };
  }

  factory ScheduledModel.fromMap(Map<String, dynamic> map) {
    return ScheduledModel(
      id: map['id'] as String,
      title: map['title'] as String,
      organizatorName: map['organizatorName'] as String,
      description: map['description'] as String,
      emoji: map['emoji'] as String, // Added fromMap
      date: DateTime.fromMillisecondsSinceEpoch(map['date'] as int),
      location: map['location'] as String,
      userId: map['userId'] as String,
      createdAt: DateTime.fromMillisecondsSinceEpoch(
          map['createdAt'] as int), // Added fromMap
    );
  }
}
