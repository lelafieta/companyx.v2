import 'dart:convert';

class ActionModel {
  final String iconPath;
  final String name;

  ActionModel({
    required this.iconPath,
    required this.name,
  });

  ActionModel copyWith({
    String? iconPath,
    String? name,
  }) {
    return ActionModel(
      iconPath: iconPath ?? this.iconPath,
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iconPath': iconPath,
      'name': name,
    };
  }

  factory ActionModel.fromMap(Map<String, dynamic> map) {
    return ActionModel(
      iconPath: map['iconPath'] as String,
      name: map['name'] as String,
    );
  }

  factory ActionModel.fromJson(String source) =>
      ActionModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
