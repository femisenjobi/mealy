import 'package:flutter/material.dart';
import '../models/meal.dart';

class MealDetailsScreen extends StatelessWidget {
  static String routeName = '/meal-details';

  Widget buildSectionTitle(BuildContext ctx, String text) {
    return Container(
      child: Text(
        text,
        style: Theme.of(ctx).textTheme.title,
      ),
    );
  }

  Widget buildListContainer(Widget child) {
    return Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10),
            ),
            height: 200,
            width: double.infinity,
            child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final Meal meal = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(title: Text(meal.title)),
      body: Column(
        children: <Widget>[
          SingleChildScrollView(
              child: Container(
              height: 300,
              width: double.infinity,
              child: Image.network(
                meal.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          buildSectionTitle(context, 'Ingredients'),
          buildListContainer(ListView.builder(
              itemBuilder: (ctx, index) {
                return Card(
                  color: Theme.of(context).accentColor,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 10,
                    ),
                    child: Text(meal.ingredients[index]),
                  ),
                );
              },
              itemCount: meal.ingredients.length,
            ),
          ),
          buildSectionTitle(context, 'Steps'),
          buildListContainer(ListView.builder(
            itemBuilder: (ctx, index) {
              return ListTile(
                leading: CircleAvatar(
                  child: Text('#${index + 1}'),
                ),
                title: Text(meal.steps[index]),
              );
            },
            itemCount: meal.steps.length,
          ),),
        ],
      ),
    );
  }
}
