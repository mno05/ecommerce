import 'package:ecommerce/Vue/widgets/AppBar.dart';
import 'package:ecommerce/Vue/widgets/NavigateBar.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarC(),
      bottomNavigationBar: NavigateBar(
        index: 1,
      ),
    );
  }
}
