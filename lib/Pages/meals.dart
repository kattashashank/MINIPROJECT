import 'package:cookbook/Databases/meals/LunchDB.dart';
import 'package:cookbook/Pages/FoodListerPage.dart';
import 'package:cookbook/components/mealBox.dart';
import 'package:flutter/material.dart';

class Meals extends StatefulWidget {
  @override
  _MealsState createState() => _MealsState();
}

class _MealsState extends State<Meals> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.pink[50],
          borderRadius: BorderRadius.circular(20),
        ),
        height: 500,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MealBox(
                  assetName: 'assets/lunch.png',
                  title: 'Lunch',
                  navigation: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FoodList(
                                RecipeListName: Lunch,
                                HeaderName: "Lunch",
                              )),
                    );
                  },
                ),
                MealBox(
                  assetName: 'assets/breakfast.jpeg',
                  title: 'Breakfast',
                  navigation: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FoodList(
                                RecipeListName: breakfast,
                                HeaderName: "Breakfast",
                              )),
                    );
                  },
                ),
                MealBox(
                  assetName: 'assets/collections/preview.jpg',
                  title: 'Dessert',
                  navigation: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FoodList(
                                RecipeListName: desert,
                                HeaderName: "Dessert",
                              )),
                    );
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MealBox(
                  assetName: 'assets/dinner.webp',
                  title: 'Dinner',
                  navigation: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FoodList(
                                RecipeListName: dinner,
                                HeaderName: "Dinner",
                              )),
                    );
                  },
                ),
                MealBox(
                  assetName: 'assets/collections/salad.jpeg',
                  title: 'Salad',
                  navigation: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FoodList(
                                RecipeListName: salad,
                                HeaderName: "Salad",
                              )),
                    );
                  },
                ),
                MealBox(
                  assetName: 'assets/soup.jpeg',
                  title: 'Soups',
                  navigation: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FoodList(
                                RecipeListName: soups,
                                HeaderName: "Soups",
                              )),
                    );
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
