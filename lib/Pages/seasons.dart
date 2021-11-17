import 'package:cookbook/Databases/seasons/seasonsDB.dart';
import 'package:cookbook/Pages/FoodListerPage.dart';
import 'package:cookbook/components/seasonBox.dart';
import 'package:flutter/material.dart';

class Seasons extends StatefulWidget {
  @override
  _SeasonsState createState() => _SeasonsState();
}

class _SeasonsState extends State<Seasons> {
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
          child: PageView(
            children: <Widget>[
              SeasonBox(
                assetName: "assets/seasons/summer.jpeg",
                title: "summer"
                    "",
                navigation: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => FoodList(
                              RecipeListName: summer,
                              HeaderName: "Summer's Breaze",
                            )),
                  );
                },
              ),
              SeasonBox(
                assetName: "assets/seasons/winter.jpeg",
                title: "winter"
                    "",
                navigation: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => FoodList(
                              RecipeListName: winter,
                              HeaderName: "winter",
                            )),
                  );
                },
              ),
              SeasonBox(
                assetName: "assets/seasons/autumn.jpeg",
                title: "autumn"
                    "",
                navigation: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => FoodList(
                              RecipeListName: autumn,
                              HeaderName: "autumn",
                            )),
                  );
                },
              ),
            ],
          )),
    );
  }
}
