import 'package:ecommerce/Vue/widgets/InputText.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Inscription extends StatefulWidget {
  const Inscription({Key key}) : super(key: key);

  @override
  State<Inscription> createState() => _InscriptionState();
}

class _InscriptionState extends State<Inscription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 60,
            right: 8,
            left: 8.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  "INSCRIPTION",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  // boxShadow: [
                  //   BoxShadow(
                  //     color: Colors.black54,
                  //     blurRadius: 8,
                  //     offset: Offset(0, 0),
                  //   ),
                  // ],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 15.0, left: 15.0, bottom: 5),
                        child: Text(
                          'Votre prenom',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      InputText(
                        hint: 'Prenom',
                        icoExit: false,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 15.0, left: 15.0, bottom: 5),
                        child: Text(
                          'Votre Nom',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      InputText(
                        hint: 'Nom',
                        icoExit: false,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 15.0, left: 15.0, bottom: 5),
                        child: Text(
                          'Votre addresse email',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      InputText(
                        hint: 'Adresse email',
                        icoExit: false,
                      ),
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
                        icoExit: false,
                        hint: 'Votre mot de passe',
                        motDePasse: true,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 15.0, left: 15.0, bottom: 5),
                        child: Text(
                          'Confirmer votre mot de passe',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      InputText(
                        icoExit: false,
                        hint: 'Confirmation mot de passe',
                        motDePasse: true,
                      ),
                      SizedBox(height: 15),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 55,
                          width: 370,
                          margin: EdgeInsets.only(
                            bottom: 10,
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
                            color: Colors.yellow.shade600,
                          ),
                          child: Center(
                            child: Text(
                              'Inscription',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ],
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
