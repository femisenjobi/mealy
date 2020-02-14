import 'package:flutter/material.dart';
import './category_item.dart';
import '../dummy-data.dart';


class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
        padding: EdgeInsets.all(20),
        children: DUMMY_CATEGORIES.map((category) => CategoryItem(category)).toList(),
        gridDelegate:SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3/2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
    );
  }
}