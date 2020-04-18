import 'package:flutter/material.dart';
import 'package:meals_app/categories_list.dart';
import 'package:meals_app/modals/meals.dart';
import 'package:meals_app/widgets/meals_item.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = '/categories-meal';

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final String screenTitle = routeArgs['title'];
    final String id = routeArgs['id'];
    print(id);
    final selectedMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(id);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(screenTitle),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return MealsItem(
            title: selectedMeals[index].title,
            imageUrl: selectedMeals[index].imageUrl,
            duration: selectedMeals[index].duration,
            complexity: selectedMeals[index].complexity,
            affordability: selectedMeals[index].affordability,
            id: selectedMeals[index].id,
          );
        },
        itemCount: selectedMeals.length,
      ),
    );
  }
}
