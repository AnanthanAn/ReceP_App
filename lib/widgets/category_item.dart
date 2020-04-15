import 'package:flutter/material.dart';

import '../screens/category_meals_screen.dart';
//import 'package:google_fonts/google_fonts.dart';
//import 'package:google_fonts/google_fonts.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final String id;
  final Color bgColor;

  CategoryItem({this.title,this.id, this.bgColor});


  void startNewScreen(BuildContext context){
    Navigator.of(context).pushNamed(CategoryMealsScreen.routeName,arguments: {
      'title' : title,
      'id' : id
    });
  }


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () => startNewScreen(context),
        child: Container(
          child: Text(title,style: TextStyle(fontFamily: 'Raleway',fontSize: 24),),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [bgColor.withOpacity(0.7), bgColor],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight),borderRadius: BorderRadius.circular(15)),
        ),
      ),
    );
  }
}
