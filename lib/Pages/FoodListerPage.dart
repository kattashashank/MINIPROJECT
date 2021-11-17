import 'package:cookbook/components/FoodCardGen.dart';
import 'package:flutter/material.dart';

//Recipie List Builder
class FoodList extends StatelessWidget {
  final List RecipeListName;
  final String HeaderName;
  FoodList({@required this.RecipeListName, @required this.HeaderName});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          HeaderName,
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
        child: ListView(
          children: <Widget>[
            SizedBox(height: 0.0),
            ListView.builder(
              primary: false,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: RecipeListName == null ? 0 : RecipeListName.length,
              itemBuilder: (BuildContext context, int index) {
                Map foods = RecipeListName[index];

                return DrawCard(
                  asset: foods['asset'],
                  name: foods['name'],
                  items: foods['items'],
                  process: foods['process'],
                  prepTime: foods['prepTime'],
                  cookTime: foods['cookTime'],
                  serves: foods['serves'],
                );
              },
            ),
            SizedBox(height: 10.0),
          ],
        ),
      ),
    );
  }
}
