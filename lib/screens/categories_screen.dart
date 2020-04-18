import 'package:flutter/material.dart';
import 'package:meals_app/categories_list.dart';
import 'package:meals_app/widgets/category_item.dart';
import 'package:meals_app/widgets/drawer_main.dart';

class CategoriesScreen extends StatefulWidget {
  static const routeName = '/categories-screen' ;

  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: GridView(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15),
        children: categoriesList
            .map((catItem) => CategoryItem(
                  title: catItem.categoryName,
                  id: catItem.id,
                  bgColor: catItem.bgColor,
                ))
            .toList(),
      ),
    );
  }
}
