import 'package:cookbook/Databases/Healthy/gluttenfree.dart';
import 'package:cookbook/Databases/Healthy/lowcarb.dart';
import 'package:cookbook/Databases/Healthy/vegan.dart';
import 'package:cookbook/Pages/FoodListerPage.dart';
import 'package:cookbook/components/seasonBox.dart';
import 'package:flutter/material.dart';

class healthy extends StatefulWidget {
  @override
  _healthyState createState() => _healthyState();
}

class _healthyState extends State<healthy> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: Container(
          decoration: BoxDecoration(
            color: Colors.lightGreen,
            borderRadius: BorderRadius.circular(20),
          ),
          height: 500,
          width: double.infinity,
          child: PageView(
            children: <Widget>[
              SeasonBox(
                assetName: "assets/healthy/roast.jpg",
                title: "Vegan",
                navigation: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => FoodList(
                              RecipeListName: vegan,
                              HeaderName: "Vegan Diet",
                            )),
                  );
                },
              ),
              SeasonBox(
                assetName: "assets/healthy/lowcarb.jpg",
                title: "Low Carbs",
                navigation: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => FoodList(
                              RecipeListName: lowcarb,
                              HeaderName: "Low Carbs",
                            )),
                  );
                },
              ),
              SeasonBox(
                assetName: "assets/healthy/soba.jpg",
                title: "Glutten-Frees",
                navigation: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => FoodList(
                              RecipeListName: gfree,
                              HeaderName: "Glutten-Free",
                            )),
                  );
                },
              ),
            ],
          )),
    );
  }
}
