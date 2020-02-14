import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(15),
            height: 120,
            width: double.infinity,
            alignment: Alignment.centerLeft,
            color: Theme.of(context).accentColor,
            child: Text(
              'Cooking Up',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30,
                color: Theme.of(context).primaryColor
              )
            ),
          ),
          SizedBox(height: 20),
          ListTile(
            onTap: (){

            },
            leading: Icon(Icons.restaurant, size: 26),
            title: Text(
              'Meals',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'RobotoCondensed',
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            onTap: (){

            },
            leading: Icon(Icons.settings, size: 26),
            title: Text(
              'Filter',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'RobotoCondensed',
                fontSize: 24,
              ),
            ),
          ),
        ]
      ),
    );
  }
}