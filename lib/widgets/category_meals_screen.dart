import 'package:flutter/material.dart';
import '../models/category.dart';
import '../dummy-data.dart';
import './meal_item.dart';

class CategoryMealsScreen extends StatelessWidget {
  // final Category category;

  // CategoryMealsScreen(this.category);
  static const String routeName = '/category-meals';

  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context).settings.arguments as Map<String, Category>;
    final category = routeArgs['category'];
    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(category.id);
    }).toList(  );

    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(categoryMeals[index]);
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}