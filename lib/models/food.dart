import 'package:flutter/material.dart';

class Food {
  final String name;
  final String description;
  final String imgPath;
  final double price;
  final FoodCategory category;
  List<Addon> availableAddons;

  Food({
    required this.name,
    required this.description,
    required this.imgPath,
    required this.price,
    required this.category,
    required this.availableAddons,
  });
}

enum FoodCategory { burgers, salad, sides, desserts, drinks }

class Addon {
  final String name;
  final double price;

  Addon({
    required this.name,
    required this.price,
  });
}
