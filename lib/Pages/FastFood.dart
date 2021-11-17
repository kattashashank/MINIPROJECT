import 'package:cookbook/Databases/FastFoodDB.dart';
import 'package:cookbook/Pages/FoodListerPage.dart';
import 'package:cookbook/components/CategoryCard.dart';
import 'package:flutter/material.dart';

class FastFood extends StatefulWidget {
  @override
  _FastFoodState createState() => _FastFoodState();
}

class _FastFoodState extends State<FastFood> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: EdgeInsets.only(left: 5),
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      children: <Widget>[
        CategoryCard(
          title: "Burger",
          assetName: "assets/icons/burger.jpeg",
          navigation: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FoodList(
                  RecipeListName: Burger,
                  HeaderName: "Burger",
                ),
              ),
            );
          },
        ),
        CategoryCard(
          title: "Pizza",
          assetName: "assets/icons/pizza.jpg",
          navigation: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => FoodList(
                        RecipeListName: pizza,
                        HeaderName: "pizza",
                      )),
            );
          },
        ),
        CategoryCard(
          assetName: 'assets/icons/noodle.jpeg',
          title: "noodles",
          navigation: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => FoodList(
                        RecipeListName: noodles,
                        HeaderName: "noodles",
                      )),
            );
          },
        ),
        CategoryCard(
          assetName: 'assets/icons/sausage.jpg',
          title: "sausages",
          navigation: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => FoodList(
                        RecipeListName: sausages,
                        HeaderName: "sausages",
                      )),
            );
          },
        )
      ],
    );
  }
}
