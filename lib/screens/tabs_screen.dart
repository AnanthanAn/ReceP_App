import 'package:flutter/material.dart';
import 'package:meals_app/screens/categories_screen.dart';
import 'package:meals_app/screens/favourites_screen.dart';
import 'package:meals_app/widgets/drawer_main.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final List<Map<String, Object>> screens = [
    {'screen': CategoriesScreen(), 'title': 'Categories'},
    {'screen': FavouritesScreen(), 'title': 'Favourites'},
  ];

  int _currentIndex = 0;

  void _selectedPage(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(screens[_currentIndex]['title']),
      ),
      drawer: MainDrawer(),
      body: screens[_currentIndex]['screen'],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.category), title: Text('Categories')),
          BottomNavigationBarItem(
              icon: Icon(Icons.star), title: Text('Favourites')),
        ],
        onTap: _selectedPage,
        currentIndex: _currentIndex,
        selectedItemColor: Colors.lightBlue,
        unselectedItemColor: Theme.of(context).accentColor,
      ),
    );
  }
}
