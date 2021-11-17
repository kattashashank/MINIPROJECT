import 'package:cookbook/Databases/ChefsCurated/Clara.dart';
import 'package:cookbook/Databases/ChefsCurated/gordon.dart';
import 'package:cookbook/Databases/ChefsCurated/thomas.dart';
import 'package:cookbook/Databases/ChefsCurated/vikas.dart';
import 'package:cookbook/Databases/ChefsCurated/wolfgang.dart';
import 'package:cookbook/Pages/FoodListerPage.dart';
import 'package:cookbook/components/ChefCard.dart';
import 'package:flutter/material.dart';

class ChefsCurated extends StatefulWidget {
  @override
  _ChefsCuratedState createState() => _ChefsCuratedState();
}

class _ChefsCuratedState extends State<ChefsCurated> {
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: <Widget>[
        ChefCard(
          assetName: 'gordon.png',
          title: 'Gordan\nRamsay\'s \nMost Popular Dishes',
          navigation: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => FoodList(
                        RecipeListName: Gordon,
                        HeaderName: "Ramsay's",
                      )),
            );
          },
        ),
        ChefCard(
          assetName: 'clarasmith.jpg',
          title: 'Clara\n'
              'Smith\'s \nbest meals \nof all \ntime',
          navigation: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => FoodList(
                        RecipeListName: ClaraSmith,
                        HeaderName: "ClaraSmith's",
                      )),
            );
          },
        ),
        ChefCard(
          assetName: 'thomas.jpeg',
          title: 'Thomas\n'
              'keller\'s \nSingature\nRecipes',
          navigation: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => FoodList(
                        RecipeListName: thomas,
                        HeaderName: "Thomas keller's",
                      )),
            );
          },
        ),
        ChefCard(
          assetName: 'vikaskhanna.jpg',
          title: 'Vikas\n'
              'Khanna\'s \nBest Recipies',
          navigation: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => FoodList(
                        RecipeListName: vikas,
                        HeaderName: "Vikas Khanna's",
                      )),
            );
          },
        ),
        ChefCard(
          assetName: 'wolfgang.jpeg',
          title: 'wolfgang\npuck\'s \nOscar worthy \nDishes',
          navigation: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => FoodList(
                        RecipeListName: wolfgang,
                        HeaderName: "wolfgang's",
                      )),
            );
          },
        ),
      ],
    );
  }
}
