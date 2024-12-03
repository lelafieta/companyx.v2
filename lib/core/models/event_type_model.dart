// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/material.dart';

class EventTypeModel {
  final String? id;
  final String? name;
  final String? description;
  final String? icon;
  final Color? color;
  final Color? iconColor;
  EventTypeModel({
    this.id,
    this.name,
    this.description,
    this.icon,
    this.color,
    this.iconColor,
  });

  EventTypeModel copyWith({
    String? id,
    String? name,
    String? description,
    String? icon,
    Color? iconColor,
  }) {
    return EventTypeModel(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      icon: icon ?? this.icon,
      iconColor: iconColor ?? this.iconColor,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'description': description,
      'icon': icon,
      'color': color?.value,
      'iconColor': iconColor
    };
  }

  factory EventTypeModel.fromMap(Map<String, dynamic> map) {
    return EventTypeModel(
      id: map['id'] != null ? map['id'] as String : null,
      name: map['name'] != null ? map['name'] as String : null,
      description:
          map['description'] != null ? map['description'] as String : null,
      icon: map['icon'] != null ? map['icon'] as String : null,
      color: map['color'] != null ? Color(map['color'] as int) : null,
      iconColor:
          map['iconColor'] != null ? Color(map['iconColor'] as int) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory EventTypeModel.fromJson(String source) =>
      EventTypeModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
