import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String foodName;
  final String foodImage;
  final String foodIngredients;

  const DetailScreen(
      {Key key, this.foodName, this.foodImage, this.foodIngredients})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'Detail Food Recipes',
        style: TextStyle(color: Colors.white),
      )),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Image.network(
                foodImage,
                width: 420,
                height: 240,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                foodName + '\n',
                style: TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text('Ingredients', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                padding: EdgeInsets.all(5),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(foodIngredients, style: TextStyle(color: Colors.black, fontSize: 13),),
                padding: EdgeInsets.all(5),
              )
            ],
          ),
        ),
      ),
    );
  }
}
