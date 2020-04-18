import 'package:flutter/material.dart';
import 'package:meals_app/modals/meals.dart';
import 'package:meals_app/screens/meals_details_screen.dart';

class MealsItem extends StatelessWidget {
  final String title;
  final String id;
  final String imageUrl;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;

  MealsItem(
      {@required this.title,
      @required this.imageUrl,
      @required this.id,  
      this.duration,
      this.complexity,
      this.affordability});
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

  void startMealsScreen(context) {
    
    Navigator.of(context).pushNamed(MealsDetails.routeName,arguments: id);
    
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => startMealsScreen(context),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)),
                  child: Image.network(
                    imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  child: Container(
                    width: 220,
                    color: Colors.black54,
                    padding: EdgeInsets.symmetric(vertical: 5,horizontal: 20),
                    child: Text(
                      title,
                      style: TextStyle(fontSize: 26, color: Colors.white),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                  bottom: 20,
                  right: 10,
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[

                Row(children: <Widget>[
                  Icon(Icons.schedule),
                  SizedBox(width: 6,),
                  Text('$duration min')
                ],),
                Row(children: <Widget>[
                  Icon(Icons.extension),
                  SizedBox(width: 6,),
                  Text(getComplexity)
                ],),
                Row(children: <Widget>[
                  Icon(Icons.attach_money),
                  SizedBox(width: 6,),
                  Text(getAffordability)
                ],),

              ],),
            )
          ],
        ),
      ),
    );
  }
}
