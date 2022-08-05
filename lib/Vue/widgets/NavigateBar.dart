import 'package:ecommerce/Vue/Data/Colors.dart';
import 'package:flutter/material.dart';

class NavigateBar extends StatefulWidget {
  const NavigateBar({Key key}) : super(key: key);

  @override
  State<NavigateBar> createState() => _NavigateBarState();
}

class _NavigateBarState extends State<NavigateBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
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
