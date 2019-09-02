import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget{

  final String FoodName;
  final String FoodImage;
  final String FoodIngredients;

  const DetailScreen({Key key, this.FoodName, this.FoodImage, this.FoodIngredients}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Food Recipes'),
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () => Navigator.pop(context, false)),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.network(FoodImage, width: 400, height: 200,),
              Text('\n' +FoodName+ '\n', style: TextStyle(color: Colors.black, fontSize: 16.00),),
              Text(FoodIngredients),
            ],
          ),
        ),
      ),
    );
  }

}