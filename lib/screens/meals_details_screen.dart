import 'package:flutter/material.dart';
import 'package:meals_app/categories_list.dart';

class MealsDetails extends StatelessWidget {
  static const routeName = '/meals-screen';

  Widget setHeading(String heading) {
    return Text(
      heading,
      style: TextStyle(fontSize: 24),
    );
  }

  Widget setContainer({@required Widget child}) {
    return Container(
      height: 150,
        width: 300,
        child: child,
        decoration: BoxDecoration(
            color: Colors.white, border: Border.all(color: Colors.grey)));
  }

  @override
  Widget build(BuildContext context) {
    final String id = ModalRoute.of(context).settings.arguments as String;

    final selectedMeal = DUMMY_MEALS.firstWhere((meal) => meal.id == id);

    return Scaffold(
      appBar: AppBar(
        title: Text(selectedMeal.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: 10),
              height: 300,
              width: double.infinity,
              child: Image.network(
                selectedMeal.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            setHeading('Ingredients'),
            setContainer(child: ListView.builder(itemBuilder: (context,index){
              return Card(child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(selectedMeal.ingredients[index]),
              ),);
            },itemCount: selectedMeal.ingredients.length,)),
            setHeading('Steps'),
            setContainer(child: ListView.builder(itemBuilder: (context,index){
              return ListTile(leading: CircleAvatar(child: Text('${index + 1}'),),title: Text(selectedMeal.steps[index]),);
            },itemCount: selectedMeal.ingredients.length,)),
          ],
        ),
      ),
    );
  }
}
