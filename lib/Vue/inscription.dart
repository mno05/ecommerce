import 'package:ecommerce/Vue/widgets/ButtonApp.dart';
import 'package:ecommerce/Vue/widgets/InputText.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
class Inscription extends StatefulWidget {
  const Inscription({Key key}) : super(key: key);

  @override
  State<Inscription> createState() => _InscriptionState();
}

class _InscriptionState extends State<Inscription> {
  FirebaseAuth auth = FirebaseAuth.instance;
  TextEditingController email = TextEditingController();
  TextEditingController passeword= TextEditingController();
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
                        controller: email,
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
                        controller: passeword,
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
                      ButtonApp(
                        text: "Inscription",
                        retour: (){
                            try{
                              auth.createUserWithEmailAndPassword(email: email.text, password: passeword.text).then((value) {
                                  print(value);
                              });
                            }catch(e){
                              print(e);

                            }
                        },
                      )
                      ,
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
