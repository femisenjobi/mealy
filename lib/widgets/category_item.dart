import 'package:flutter/material.dart';
import './category_meals_screen.dart';
import '../models/category.dart';

class CategoryItem extends StatelessWidget {
  final Category category;

  CategoryItem(this.category);

  void selectCategory(BuildContext ctx) { 
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_){
      return CategoryMealsScreen(category); 
    }));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15) ,
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(category.title, style: Theme.of(context).textTheme.title,),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              category.color.withOpacity(0.6),
              category.color
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        )
      ),
    );
  }
}