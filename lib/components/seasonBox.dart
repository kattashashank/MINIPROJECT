import 'package:flutter/material.dart';

class SeasonBox extends StatelessWidget {
  final String assetName;
  final String title;
  final Function navigation;
  SeasonBox(
      {@required this.assetName,
      @required this.title,
      @required this.navigation});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 120,
      child: GestureDetector(
        onTap: navigation,
        child: Stack(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(5),
              height: 350,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(assetName), fit: BoxFit.cover),
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
              top: 180,
              left: 5,
              child: Container(
                padding: EdgeInsets.all(5),
                child: Text(
                  title,
                  style: TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                decoration: BoxDecoration(
                  color: Colors.black87,
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.elliptical(20, 15)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
