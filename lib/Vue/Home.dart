import 'package:ecommerce/Vue/widgets/NavigateBar.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(.94),
      appBar: AppBar(
        title: Text(
          "SHOPPERS",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontFamily: 'Schyler',
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ShopCard(),
            ShopCard(),
          ],
        ),
      )),
      bottomNavigationBar: NavigateBar(),
    );
  }
}

Widget ShopCard() {
  return Container(
    height: 230,
    width: 180,
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.black38,
          offset: Offset(3, 3),
          blurRadius: 8,
        )
      ],
      borderRadius: BorderRadius.all(Radius.circular(50)),
      color: Colors.white,
    ),
    child: Column(
      children: [
        Expanded(
          flex: 5,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
                image: DecorationImage(
                  image: AssetImage('img/montre.jpg'),
                  fit: BoxFit.fitHeight,
                )),
          ),
        ),
        Expanded(
          flex: 2,
          child: Padding(
            padding: EdgeInsets.all(12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Montre Philips",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text("87.5\$",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    )),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
