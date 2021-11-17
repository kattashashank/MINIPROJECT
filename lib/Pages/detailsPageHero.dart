import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String name;
  final String asset;
  final String process;
  final String items;
  final String prepTime;
  final String cookTime;
  final String serves;

  ///For hero tagging and showing relative image

  DetailScreen(
      {@required this.name,
      @required this.asset,
      @required this.items,
      @required this.process,
      @required this.serves,
      @required this.prepTime,
      @required this.cookTime});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: <Widget>[
            ///First show the image in background
            Container(
              height: size.height * 0.55,
              child: Image.asset(
                asset,
                fit: BoxFit.cover,
              ),
            ),

            ///Container for more content
            DraggableScrollableSheet(
              maxChildSize: 1,
              initialChildSize: 0.6,
              minChildSize: 0.6,
              builder: (context, controller) {
                return SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  controller: controller,
                  child: Container(
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: Text(
                                name,
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 25,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                            IconButton(
                              icon: Icon(Icons.favorite),
                              color: Colors.redAccent,
                              iconSize: 30,
                              onPressed: () {},
                            )
                          ],
                        ),
                        Text(
                          name,
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 15,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 15,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 15,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 15,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.grey[400],
                              size: 15,
                            ),
                          ],
                        ),

                        SizedBox(
                          height: 24,
                        ),

                        ///Container for food information
                        Container(
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border:
                                          Border.all(color: Colors.grey[200])),
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 16),
                                  child: Column(
                                    children: <Widget>[
                                      Text(
                                        "SERVES",
                                        style: TextStyle(
                                          fontFamily: 'Roboto',
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Text(
                                        //TODO Serves error
                                        "$serves",
                                        style: TextStyle(
                                          fontFamily: 'Roboto',
                                          color: Colors.black,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border:
                                          Border.all(color: Colors.grey[200])),
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 16),
                                  child: Column(
                                    children: <Widget>[
                                      Text(
                                        "Prep.Time",
                                        style: TextStyle(
                                          fontFamily: 'Roboto',
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Text(
                                        prepTime,
                                        style: TextStyle(
                                          fontFamily: 'Roboto',
                                          color: Colors.black,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border:
                                          Border.all(color: Colors.grey[200])),
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 16),
                                  child: Column(
                                    children: <Widget>[
                                      Text(
                                        "CookTime",
                                        style: TextStyle(
                                          fontFamily: 'Roboto',
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Text(
                                        cookTime,
                                        style: TextStyle(
                                          fontFamily: 'Roboto',
                                          color: Colors.black,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        SizedBox(
                          height: 24,
                        ),

                        Text(
                          "Ingredients",
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),

                        SizedBox(
                          height: 4,
                        ),

                        Text(
                          items,
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Avenir Next Condensed',
                            color: Colors.blueGrey,
                          ),
                        ),

                        SizedBox(
                          height: 24,
                        ),

                        Text(
                          "METHOD",
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),

                        SizedBox(
                          height: 4,
                        ),

                        Text(
                          process,
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Roboto',
                            color: Colors.blueGrey,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
