import 'package:flutter/material.dart';
import '../models/category.dart';
import './category_item.dart';

const CATEGORY_LIST = const <Category>[
  Category(1, 'Intercontinental', Colors.red,),
  Category(2, 'African', Colors.grey,),
  Category(3, 'Mexican', Colors.blue,),
  Category(4, 'Italian', Colors.orange,),
];

class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Mealy')),
      body: GridView(
        padding: EdgeInsets.all(20),
        children: CATEGORY_LIST.map((category) => CategoryItem(category)).toList(),
        gridDelegate:SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3/2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ),
    );
  }
}