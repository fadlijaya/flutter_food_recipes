import 'package:flutter/material.dart';
import 'package:flutter_food_recipes/view/detail.dart';
import 'package:flutter_food_recipes/model/data.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Food Recipes'),
        ),
        body: foodRecipesView(),
      ),
    );
  }

  GridView foodRecipesView() => GridView.builder(
      itemCount: FoodRecipes.foodName.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, index) => Center(
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              child: ListTile(
                title: Column(
                  children: <Widget>[
                    Padding(padding: EdgeInsets.all(5.0)),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.network(
                        FoodRecipes.foodImage[index],
                        width: 300,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      FoodRecipes.foodName[index],
                      style: TextStyle(color: Colors.blueGrey, fontSize: 13),
                    )
                  ],
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => DetailScreen(
                                foodImage: FoodRecipes.foodImage[index],
                                foodName: FoodRecipes.foodName[index],
                                foodIngredients:
                                    FoodRecipes.foodIngredients[index],
                              )));
                },
              ),
            ),
          ));
}
