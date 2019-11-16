import 'package:flutter/material.dart';
import 'package:flutter_food_recipes/view/detail.dart';
import 'package:flutter_food_recipes/model/data.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Food Recipes', style: TextStyle(color: Colors.white)),
          centerTitle: true,
        ),
        body: foodRecipesView());
  }

  GridView foodRecipesView() => GridView.builder(
      itemCount: FoodRecipes.foodName.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, index) => GestureDetector(
            child: Card(
              elevation: 2.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              margin: EdgeInsets.all(10),
              child: GridTile(
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailScreen(
                                  foodImage: FoodRecipes.foodImage[index],
                                  foodName: FoodRecipes.foodName[index],
                                  foodIngredients:
                                      FoodRecipes.foodIngredients[index],
                                )));
                  },
                  child: Image.network(FoodRecipes.foodImage[index], width: 200, height: 200, fit: BoxFit.cover,),
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  padding: EdgeInsets.all(0),
                ),
                footer: Container(
                  color: Colors.white70,
                  padding: EdgeInsets.all(3.0),
                  child: Text(
                    FoodRecipes.foodName[index],
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.green),
                  ),
                ),
              ),
            ),
          ));
}
