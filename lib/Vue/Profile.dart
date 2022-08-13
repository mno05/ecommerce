import 'package:ecommerce/Vue/Data/Colors.dart';
import 'package:ecommerce/Vue/widgets/AppBar.dart';
import 'package:ecommerce/Vue/widgets/ButtonApp.dart';
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
      backgroundColor: ColorData.bcgrndcolor,
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 80,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Moïse NDJADI',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                'Total des ahats effectués : 8000\$',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              // SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Divider(),
              ),
              ButtonApp(
                text: 'Deconnexion',
                retour: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
