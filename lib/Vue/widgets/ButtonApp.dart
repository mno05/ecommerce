import 'package:ecommerce/Vue/Data/Colors.dart';
import 'package:flutter/material.dart';

class ButtonApp extends StatelessWidget {
  const ButtonApp({
    Key key,
    this.text,
    this.retour,
    this.marginB = 30,
  }) : super(key: key);
  final VoidCallback retour;
  final String text;
  final double marginB;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 370,
      margin: EdgeInsets.only(
        bottom: marginB,
      ),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black38,
            blurRadius: 8,
            offset: Offset(0, 2),
          )
        ],
        borderRadius: BorderRadius.circular(50),
        color: ColorData.primaryColor,
      ),
      child: TextButton(
        onPressed: retour,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
      ),
    );
  }
}
