import 'package:flutter/material.dart';

class ChefCard extends StatelessWidget {
  final String assetName;
  final String title;
  final Function navigation;
  ChefCard(
      {@required this.assetName,
      @required this.title,
      @required this.navigation});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: navigation,
      child: Stack(
        children: <Widget>[
          Container(
              margin: EdgeInsets.all(5),
              height: 800,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/chefs/$assetName'),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(8),
              )),
          Positioned(
            top: 70,
            left: 10,
            child: Container(
              padding: EdgeInsets.all(5),
              child: Text(
                title,
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
