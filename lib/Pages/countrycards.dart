import 'package:cookbook/Databases/cusines/French.dart';
import 'package:cookbook/Databases/cusines/Indian.dart';
import 'package:cookbook/Databases/cusines/Italian.dart';
import 'package:cookbook/Databases/cusines/Japanese.dart';
import 'package:cookbook/Databases/cusines/Mexican.dart';
import 'package:cookbook/Pages/FoodListerPage.dart';
import 'package:cookbook/components/CountryCardContentsGen.dart';
import 'package:flutter/material.dart';

const double heightmultiplier = 0.50;

class SlidingCardsView extends StatefulWidget {
  @override
  _SlidingCardsViewState createState() => _SlidingCardsViewState();
}

class _SlidingCardsViewState extends State<SlidingCardsView> {
  PageController pageController;
  double pageOffset = 0;

  @override
  void initState() {
    super.initState();
    pageController = PageController(viewportFraction: 0.8);
    pageController.addListener(() {
      setState(() => pageOffset = pageController.page);
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      width: 200,
      child: PageView(
        controller: pageController,
        children: <Widget>[
          SlidingCard(
            name: 'Indian',
            assetName: 'assets/countries/Indian.jpg',
            offset: pageOffset,
            navigation: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => FoodList(
                          RecipeListName: Indian,
                          HeaderName: "Indian Cusines",
                        )),
              );
            },
          ),
          SlidingCard(
            name: 'Italian',
            assetName: 'assets/countries/Italian.jpg',
            offset: pageOffset - 1,
            navigation: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => FoodList(
                          RecipeListName: Italian,
                          HeaderName: "Italian Cusines",
                        )),
              );
            },
          ),
          SlidingCard(
            name: 'French',
            assetName: 'assets/countries/French.jpg',
            offset: pageOffset - 2,
            navigation: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => FoodList(
                          RecipeListName: French,
                          HeaderName: "French Cusines",
                        )),
              );
            },
          ),
          SlidingCard(
            name: 'Mexican',
            assetName: 'assets/countries/Mexican.jpg',
            offset: pageOffset - 3,
            navigation: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => FoodList(
                          RecipeListName: Mexican,
                          HeaderName: "Mexican Cusines",
                        )),
              );
            },
          ),
          SlidingCard(
            name: 'Japanese',
            assetName: 'assets/countries/Japanese.jpg',
            offset: pageOffset - 4,
            navigation: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => FoodList(
                          RecipeListName: Japansese,
                          HeaderName: "Japanese",
                        )),
              );
            },
          )
        ],
      ),
    );
  }
}
