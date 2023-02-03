import 'package:flutter/material.dart';

class FilterAnimalModel {
  final int id;
  final Widget icon;
  final String? title;
  bool isSelected;

  FilterAnimalModel({
    required this.id,
    required this.icon,
    this.title,
    this.isSelected = false,
  });
}
