import 'package:flutter/material.dart';

class AppBarC extends StatelessWidget with PreferredSizeWidget {
  const AppBarC({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'apb',
      child: AppBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 25),
            Text(
              "SHOPPERS",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontFamily: 'Schyler',
              ),
            ),
          ],
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(80);
}
