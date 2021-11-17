import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:cookbook/Pages/detailsPageHero.dart';
import 'package:flutter/material.dart';

class DrawCard extends StatelessWidget {
  DrawCard(
      {@required this.name,
      @required this.asset,
      @required this.items,
      @required this.process,
      @required this.serves,
      @required this.prepTime,
      @required this.cookTime});
  final String name;
  final String asset;
  final String process;
  final String items;
  final String prepTime;
  final String cookTime;
  final String serves;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => DetailScreen(
                    asset: asset,
                    name: name,
                    items: items,
                    process: process,
                    prepTime: prepTime,
                    cookTime: cookTime,
                    serves: serves,
                  )),
        ); // Navigate to the second screen using a named route.
      },
      child: Container(
        height: 200,
        alignment: Alignment.bottomCenter,
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(asset), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(3),
        ),
        child: BlurryContainer(
          height: 80,
          width: double.infinity,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(3), bottomRight: Radius.circular(3)),
          bgColor: Colors.black,
          child: Text(
            name,
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.w300, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
