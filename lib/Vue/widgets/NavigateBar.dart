import 'package:ecommerce/Vue/Data/Colors.dart';
import 'package:flutter/material.dart';

class NavigateBar extends StatelessWidget {
  const NavigateBar({Key key, this.index = 0}) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'nb',
      child: BottomNavigationBar(
        onTap: (value) {
          print(value);
          switch (value) {
            case 0:
              if (value != index) {
                Navigator.of(context).pushReplacementNamed("/home");
              }
              break;
            case 1:
              if (value != index) {
                Navigator.of(context).pushReplacementNamed("/profile");
              }
              break;
            case 2:
              if (value != index) {
                Navigator.of(context).pushReplacementNamed("/shopping");
              }
              break;
          }
        },
        currentIndex: index,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: ColorData.primaryColor,
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home_filled),
          ),
          BottomNavigationBarItem(
            label: "Profile",
            icon: Icon(Icons.person_sharp),
          ),
          BottomNavigationBarItem(
            label: "Shop",
            icon: Icon(Icons.shopping_cart_rounded),
          ),
        ],
      ),
    );
  }
}
