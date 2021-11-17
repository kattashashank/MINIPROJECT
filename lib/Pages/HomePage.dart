import 'package:cookbook/Pages/CollectionBuild.dart';
import 'package:cookbook/Pages/FastFood.dart';
import 'package:cookbook/Pages/countrycards.dart';
import 'package:cookbook/Pages/meals.dart';
import 'package:cookbook/components/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'chefs.dart';
import 'healthy.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/menu.svg"),
        onPressed: () {},
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: buildAppBar(),
        body: ListView(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    'Delicious Cuisines',
                    style: kHeadTextStyle,
                  ),
                ),
                SizedBox(
                  height: 1,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    'Authentic and tasty recipes',
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                        color: Colors.black54),
                  ),
                ),
                SizedBox(
                  height: 20,
                )
              ],
            ),
            SlidingCardsView(),
            Padding(
              padding: const EdgeInsets.all(0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 0.0, horizontal: 20),
                    child: Text(
                      'Food on The Go!',
                      style: kHeadTextStyle,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 200,
                    width: double.infinity,
                    child: FastFood(),
                  ),
                  //ToDO:Button implementation pending
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    child: Text(
                      'Chefs\' curated',
                      style: kHeadTextStyle,
                    ),
                  ),
                  SizedBox(
                    height: 250,
                    child: ChefsCurated(),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    child: Text(
                      'Delicious\' collections',
                      style: kHeadTextStyle,
                    ),
                  ),
                  SizedBox(
                    height: 250,
                    child: Collections(),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    child: Text(
                      'Meals',
                      style: kHeadTextStyle,
                    ),
                  ),
                  SizedBox(
                    height: 250,
                    child: Meals(),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    child: Text(
                      'Special',
                      style: kHeadTextStyle,
                    ),
                  ),
                  SizedBox(
                    height: 350,
                    child: healthy(),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
