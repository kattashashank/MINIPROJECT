import 'package:flutter/material.dart';
import 'package:flutter_gradient_colors/flutter_gradient_colors.dart';

class CategoryCard extends StatelessWidget {
  final String assetName;
  final String title;
  final Function navigation;
  CategoryCard(
      {@required this.assetName,
      @required this.title,
      @required this.navigation});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 130,
      child: GestureDetector(
        onTap: navigation,
        child: Stack(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(5),
              height: 150,
              width: 130,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(assetName), fit: BoxFit.cover),
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: GradientColors.orangePink),
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(.2),
                    spreadRadius: 1,
                    blurRadius: 10,
                    offset: Offset(0, 0), // changes position of shadow
                  ),
                ],
              ),
            ),
            Positioned(
              top: 110,
              left: 10,
              child: Container(
                padding: EdgeInsets.all(5),
                child: Text(
                  title,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                decoration: BoxDecoration(
                  color: Colors.black38,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
