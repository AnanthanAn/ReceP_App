import 'package:flutter/foundation.dart';

enum Complexity { Easy, Medium, Hard }
enum Affordability { Cheap, Expensive, Luxurious }



class Meal {
  final String id;
  final List<String> categories;
  final String title;
  final List<String> ingredients;
  final String imageUrl;
  final Complexity complexity;
  final Affordability affordability;
  final List<String> steps;
  final int duration;
  final bool isGlutenFree;
  final bool isLactoseFree;
  final bool isVegan;
  final bool isVegetarian;

 const Meal({@required this.id,
    @required this.categories,
    @required this.title,
    @required this.ingredients,
    @required this.imageUrl,
    @required this.complexity,
    @required this.affordability,
    @required this.steps,
    @required this.duration,
    @required this.isGlutenFree,
    @required this.isLactoseFree,
    @required this.isVegan,
    @required this.isVegetarian,
  });

  String get getComplexity{

    switch(complexity){
      case Complexity.Easy:
        return 'Easy';
        break;
      case Complexity.Medium:
        return 'Medium';
      case Complexity.Hard:
        return 'Hard';
      default:
        return 'Unknown';
    }
    }
  String get getAffordability{

    switch(affordability){
      case Affordability.Cheap:
        return 'Cheap';
        break;
      case Affordability.Expensive:
        return 'Expensive';
      case Affordability.Luxurious:
        return 'Luxurious';
      default:
        return 'Unknown';
    }
  }
}
