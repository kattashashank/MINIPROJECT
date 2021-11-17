import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';

class CollectionCard extends StatelessWidget {
  final String assetName;
  final String title;
  final Function navigation;
  CollectionCard(
      {@required this.assetName,
      @required this.title,
      @required this.navigation});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: navigation,
      child: Container(
        alignment: Alignment.bottomCenter,
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          image:
              DecorationImage(image: AssetImage(assetName), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(7),
        ),
        child: BlurryContainer(
          height: 80,
          width: double.infinity,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(7), bottomRight: Radius.circular(7)),
          bgColor: Colors.black,
          child: Text(
            title,
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
