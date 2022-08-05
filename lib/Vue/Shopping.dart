import 'package:ecommerce/Vue/Data/Colors.dart';
import 'package:ecommerce/Vue/widgets/AppBar.dart';
import 'package:ecommerce/Vue/widgets/NavigateBar.dart';
import 'package:flutter/material.dart';

class Shopping extends StatefulWidget {
  const Shopping({Key key}) : super(key: key);

  @override
  State<Shopping> createState() => _ShoppingState();
}

class _ShoppingState extends State<Shopping> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorData.bcgrndcolor,
      appBar: AppBarC(),
      body: Center(
        child: shopCard(),
      ),
      bottomNavigationBar: NavigateBar(
        index: 2,
      ),
    );
  }
}

Widget shopCard() {
  return Container(
    margin: EdgeInsets.all(20),
    height: 150,
    decoration: BoxDecoration(
        color: ColorData.bcgrndcolor,
        borderRadius: BorderRadius.all(Radius.circular(30)),
        boxShadow: [
          BoxShadow(
              color: ColorData.shadowColor,
              offset: Offset(0, 3),
              blurRadius: 9),
        ]),
    child: Row(
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.horizontal(
                left: Radius.circular(30),
              ),
              image: DecorationImage(
                  image: AssetImage('img/salon.jpg'), fit: BoxFit.cover)),
          width: 170,
        ),
        Expanded(
            child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Salon complet',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text('Very !'),
              SizedBox(height: 10),
              Text(
                '780\$',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ))
      ],
    ),
  );
}
