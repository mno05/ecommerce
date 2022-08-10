import 'package:ecommerce/Vue/Data/Colors.dart';
import 'package:ecommerce/Vue/widgets/ButtonApp.dart';
import 'package:ecommerce/Vue/widgets/InputText.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 100,
            right: 8,
            left: 8.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  "LOGIN",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black54,
                      blurRadius: 8,
                      offset: Offset(0, 0),
                    )
                  ],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 15.0, left: 15.0, bottom: 5),
                        child: Text(
                          'Votre adresse email',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      InputText(
                          icon: Icons.person_outline_rounded,
                          hint: 'Votre adresse'),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 15.0, left: 15.0, bottom: 5),
                        child: Text(
                          'Votre mot de passe',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      InputText(
                        icon: Icons.lock_outline_rounded,
                        hint: 'Mot de passe',
                        motDePasse: true,
                      ),
                      SizedBox(height: 15),
                      ButtonApp(
                        text: 'Connexion',
                        retour: () {},
                      ),
                    ],
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/inscription");
                    },
                    child: Text(
                      "Créer un compte",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
