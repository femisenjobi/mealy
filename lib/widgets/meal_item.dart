import 'package:flutter/material.dart';
import '../models/meal.dart';
import './meal_details_screen.dart';

class MealItem extends StatelessWidget {
  final Meal meal;

  MealItem(this.meal);

  String get complexityText {
    switch (meal.complexity) {
      case Complexity.Challenging:
        return 'Challenging';
        break;
      case Complexity.Hard:
        return 'Hard';
        break;
      case Complexity.Simple:
        return 'Simple';
        break;
      default:
        return 'N/A';
        break;
    }
  }
 
  String get affordabilityText {
    switch (meal.affordability) {
      case Affordability.Pricey:
        return 'Pricey';
        break;
      case Affordability.Luxurious:
        return 'Luxurious';
        break;
      case Affordability.Expensive:
        return 'Expensive';
        break;
      case Affordability.Affordable:
        return 'Affordable';
        break;
      default:
        return 'N/A';
        break;
    }
  }

  void selectMeal(BuildContext context) {
    Navigator.of(context).pushNamed(MealDetailsScreen.routeName, arguments: meal);
  }
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectMeal(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  child: Image.network(
                    meal.imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                ),
                Positioned(
                  bottom: 20,
                  left: 10,
                  child: Container(
                  color: Colors.black54,
                  width: 300,
                  padding: EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal: 20,
                  ),
                  child: Text(
                    meal.title,
                    style: TextStyle(
                      fontSize: 26,
                      color: Colors.white,
                    ),
                    softWrap: true,
                    overflow: TextOverflow.fade,
                  ),
                    ),
                )
              ],
            ),
            Padding(padding: EdgeInsets.all(20), child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(Icons.schedule),
                    SizedBox(width: 6,),
                    Text('${meal.duration} min')
                  ],
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.work),
                    SizedBox(width: 6,),
                    Text(complexityText)
                  ],
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.attach_money),
                    SizedBox(width: 6,),
                    Text(affordabilityText)
                  ],
                ),
              ],
            ),),
          ],
        ),
      ),
    );
  }
}
