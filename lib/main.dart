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
      },
      initialRoute: "/login",
    );
  }
}
