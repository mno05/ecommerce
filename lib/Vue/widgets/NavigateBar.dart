import 'package:ecommerce/Vue/Data/Colors.dart';
import 'package:flutter/material.dart';

class NavigateBar extends StatelessWidget {
  const NavigateBar({Key key, this.index = 0}) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (value) {
        switch (value) {
          case 0:
            Navigator.pushReplacementNamed(context, "/home");
            break;
          case 1:
            Navigator.pushReplacementNamed(context, "/profile");
            break;
          case 2:
            Navigator.pushReplacementNamed(context, "/shopping");
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
            icon: IconButton(icon: Icon(Icons.home_filled), onPressed: () {})),
        BottomNavigationBarItem(
            label: "Profile",
            icon: IconButton(icon: Icon(Icons.person_sharp), onPressed: () {})),
        BottomNavigationBarItem(
            label: "Shop",
            icon: IconButton(
                icon: Icon(Icons.shopping_cart_rounded), onPressed: () {})),
      ],
    );
  }
}
