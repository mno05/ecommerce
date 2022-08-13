import 'package:ecommerce/Vue/Details.dart';
import 'package:ecommerce/Vue/Home.dart';
import 'package:ecommerce/Vue/Profile.dart';
import 'package:ecommerce/Vue/Shopping.dart';
import 'package:ecommerce/Vue/inscription.dart';
import 'package:ecommerce/Vue/login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(App());
}
class App extends StatelessWidget {
  const App({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ecommerce',
      debugShowCheckedModeBanner: false,
      routes: {
        "/login": (context) => Login(),
        "/inscription": (context) => Inscription(),
        "/home": (context) => Home(),
        "/details": (context) => Details(),
        "/profile": (context) => Profile(),
        "/shopping": (context) => Shopping(),
      },
      initialRoute: "/inscription",
    );
  }
}
