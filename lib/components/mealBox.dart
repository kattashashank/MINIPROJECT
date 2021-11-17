import 'package:flutter/material.dart';
import 'package:flutter_gradient_colors/flutter_gradient_colors.dart';

class MealBox extends StatelessWidget {
  final String assetName;
  final String title;
  final Function navigation;
  MealBox(
      {@required this.assetName,
      @required this.title,
      @required this.navigation});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: navigation,
      child: Container(
        height: 120,
        width: 120,
        child: Stack(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(5),
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(assetName), fit: BoxFit.cover),
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: GradientColors.orangePink),
                borderRadius: BorderRadius.circular(15),
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
              top: 80,
              left: 30,
              child: Container(
                padding: EdgeInsets.all(5),
                child: Text(
                  title,
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
                decoration: BoxDecoration(
                  color: Colors.black54,
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
