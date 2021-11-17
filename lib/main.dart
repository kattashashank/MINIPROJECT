import 'package:cookbook/Pages/HomePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(CookBook());
}

class CookBook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Recette",
      theme: ThemeData.light(),
      home: HomePage(),
    );
  }
}
