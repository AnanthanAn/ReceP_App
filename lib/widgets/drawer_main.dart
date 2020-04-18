import 'package:flutter/material.dart';
import 'package:meals_app/screens/filters_screen.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.yellow,
            height: 150,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Cooking Up!!!',
                style: TextStyle(
                    fontSize: 28,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w900),
              ),
            ),
            alignment: Alignment.centerLeft,
          ),
          ListTile(
            leading: Icon(
              Icons.restaurant,
              size: 28,
            ),
            title: Text(
              'Meals',
              style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.bold),
            ),
            onTap: (){
              Navigator.of(context).pushReplacementNamed('/');
            },
          ),
          ListTile(
            leading: Icon(Icons.settings, size: 28),
            title: Text(
              'Settings',
              style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.bold),
            ),
            onTap: (){
              Navigator.of(context).pushReplacementNamed(FiltersScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}
