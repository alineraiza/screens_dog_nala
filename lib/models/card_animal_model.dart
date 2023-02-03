import 'package:flutter/material.dart';

class CardAnimalModel {
  final Image image;
  final Color backgroundColorImage;
  final String name;
  final String day;
  final String details;
  final String km;
  final int id;
  bool isFavorite;
  CardAnimalModel({
    required this.image,
    required this.backgroundColorImage,
    required this.name,
    required this.day,
    required this.details,
    required this.km,
    required this.id,
    this.isFavorite = false,
  });
}
