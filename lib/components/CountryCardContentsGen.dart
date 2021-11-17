import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SlidingCard extends StatelessWidget {
  final String name;
  final String assetName;
  final double offset;
  final Function navigation;
  const SlidingCard({
    Key key,
    @required this.name,
    @required this.assetName,
    @required this.offset,
    @required this.navigation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double gauss = math.exp(-(math.pow((offset.abs() - 0.5), 2) / 0.08));
    return GestureDetector(
      onTap: navigation,
      child: AspectRatio(
        aspectRatio: 3 / 1,
        child: Card(
          color: Color(0xFFF5F5F5),
          margin: EdgeInsets.only(left: 8, right: 8, bottom: 40),
          elevation: 8,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Column(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                child: Image.asset(
                  assetName,
                  height: 350,
                  alignment: Alignment(-offset.abs(), 0),
                  fit: BoxFit.fitHeight,
                ),
              ),
              SizedBox(height: 8),
              Expanded(
                child: CardContent(
                  name: name,
                  offset: gauss,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardContent extends StatelessWidget {
  final String name;
  final double offset;

  const CardContent({Key key, @required this.name, @required this.offset})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Transform.translate(
            offset: Offset(8 * offset, 0),
            child: Text(name,
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
          ),
        ],
      ),
    );
  }
}
