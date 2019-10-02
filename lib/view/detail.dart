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
      appBar: AppBar(title: Text('Detail Food Recipes')),
      body: Container(
        child: Column(
          children: <Widget>[
            Image.network(
              foodImage,
              width: 420,
              height: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              foodName + '\n',
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            Text('Bahan' '\n',
                style: TextStyle(color: Colors.black, fontSize: 16)),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Text(
                foodIngredients,
                style: TextStyle(color: Colors.blueGrey),
              ),
            )
          ],
        ),
      ),
    );
  }
}
