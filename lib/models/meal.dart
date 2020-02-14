import 'package:flutter/foundation.dart';

enum Complexity {
  Simple,
  Challenging,
  Hard,
}

enum Affordability {
  Affordable,
  Pricey,
  Expensive,
  Luxurious,
}

class Meal {
  final String id;
  final List<String> categories;
  final String title;
  final int duration;
  final String imageUrl;
  final List<String> ingredients;
  final List<String> steps;
  final Complexity complexity;
  final Affordability affordability;
  final bool isGlutenFree;
  final bool isVegetarian;
  final bool isVegan;
  final bool isLactoseFree;

  const Meal({
    @required this.id,
    @required this.categories,
    @required this.title,
    @required this.duration,
    @required this.imageUrl,
    @required this.ingredients,
    @required this.steps,
    @required this.complexity,
    @required this.affordability,
    @required this.isGlutenFree,
    @required this.isVegetarian,
    @required this.isVegan,
    @required this.isLactoseFree,
  }); 
}