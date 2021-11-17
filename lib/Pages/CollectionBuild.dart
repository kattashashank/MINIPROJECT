import 'package:cookbook/Databases/Collections/cherry_Christmas.dart';
import 'package:cookbook/Databases/Collections/desserts.dart';
import 'package:cookbook/Databases/Collections/smoothies.dart';
import 'package:cookbook/Pages/FoodListerPage.dart';
import 'package:cookbook/components/CollectionCard.dart';
import 'package:flutter/material.dart';

class Collections extends StatefulWidget {
  @override
  _CollectionsState createState() => _CollectionsState();
}

class _CollectionsState extends State<Collections> {
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: <Widget>[
        CollectionCard(
          assetName: 'assets/Curated/cherrychris.jpg',
          title: 'Cherry Christmas',
          navigation: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => FoodList(
                        RecipeListName: cherryChristmas,
                        HeaderName: "Cherry Christmas",
                      )),
            );
          },
        ),
        CollectionCard(
          assetName: 'assets/Curated/dessert.jpg',
          title: 'Desserts Delight',
          navigation: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => FoodList(
                        RecipeListName: Dessert,
                        HeaderName: "Desserts Delight",
                      )),
            );
          },
        ),
        CollectionCard(
          assetName: 'assets/Curated/smoothie.jpg',
          title: 'Smoothies',
          navigation: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => FoodList(
                        RecipeListName: smoothies,
                        HeaderName: "Smoothies",
                      )),
            );
          },
        ),
      ],
    );
  }
}
