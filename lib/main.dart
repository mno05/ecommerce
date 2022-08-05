import 'package:ecommerce/Vue/Details.dart';
import 'package:ecommerce/Vue/Home.dart';
import 'package:ecommerce/Vue/Profile.dart';
import 'package:ecommerce/Vue/Shopping.dart';
import 'package:ecommerce/Vue/inscription.dart';
import 'package:ecommerce/Vue/login.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(app());
}

class app extends StatelessWidget {
  const app({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/login": (context) => Login(),
        "/inscription": (context) => Inscription(),
        "/home": (context) => Home(),
        "/details": (context) => Details(),
        "/profile": (context) => Profile(),
        "/shopping": (context) => Shopping(),
      },
      initialRoute: "/shopping",
    );
  }
}
