import 'package:flutter/material.dart';

class ProfileMenuModel {
  final String? title;
  final String? iconPath;
  final VoidCallback? onTap;

  ProfileMenuModel({
    this.title,
    this.iconPath,
    this.onTap,
  });

  ProfileMenuModel copyWith({
    String? title,
    String? iconPath,
    VoidCallback? onTap,
  }) {
    return ProfileMenuModel(
      title: title ?? this.title,
      iconPath: iconPath ?? this.iconPath,
      onTap: onTap ?? this.onTap,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'iconPath': iconPath,
    };
  }

  factory ProfileMenuModel.fromMap(Map<String, dynamic> map) {
    return ProfileMenuModel(
      title: map['title'] as String,
      iconPath: map['iconPath'] as String,
    );
  }
}
