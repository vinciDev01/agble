import 'package:agble/components/alert_controller.dart';
import 'package:agble/constants.dart';
import 'package:flutter/material.dart';
import 'package:agble/Screens/Login/components/vouloir_un_compte.dart';
import 'package:agble/components/rounded_button.dart';
//import 'package:flutter_svg/svg.dart';
import '../../compoments/separateur.dart';
import '../../compoments/icon_connection.dart';
import 'Background.dart';
import '../../compoments/champs_de_mail.dart';
import '../../compoments/champs_password.dart';
import 'package:agble/Screens/Sinup/signup.dart';
//import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Loginup extends StatelessWidget {
  final _emailcontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();
  final _auth = FirebaseAuth.instance;
  final Navigate navigate;

  Loginup({super.key, required this.navigate});

   //Pres
  void login(BuildContext context) async{
    String email = _emailcontroller.text.trim();
    String password = _passwordcontroller.text.trim();

    if (email.isNotEmpty && password.isNotEmpty){
      try {
        await _auth.signInWithEmailAndPassword(
          email: email,
          password: password,
        );
        navigate();
      } //Gérer les erreurs d'authentifications
      on FirebaseAuthMultiFactorException catch(e) {
        //l'utilisateur n'a pas été trouver
        if (e.code == 'user-not-found') {
          AlertController(
              titre: 'Erreur d\'authentification',
              libelle: 'Utilisateur non trouvé. Veuillez verifier vos identifiants. '
          ).show(context);
        }
        //Mot de passe incorrect
        else if(e.code == 'wrong-password'){
          AlertController(
              titre: 'Erreur d\'authentification',
              libelle: 'Mot de passe incorrect. Veuillez verifier vos identifiants. '
          ).show(context);
        }
        else if (e.code == 'invalid-email'){
          AlertController(
              titre: 'Erreur d\'authentification',
              libelle: 'Email invalide. Veuillez verifier vos identifiants. '
          ).show(context);
        }
    }
  }
    // Gérer le cas où l'adresse e-mail ou le mot de passe est vide
    else {
      AlertController(
        titre: 'Empty',
        libelle: 'Veuillez remplir tous les champs'
      ).show(context);
    }
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: SizedBox(
        height: size.height,
        child: Background(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                "Connexion",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: size.height * 0.1,
              ), //3% de la hauteur totale de l'écran
              /*SvgPicture.asset("assets/icons/login.svg",
                  height: size.height * 0.35),*/ //35% de la hauteur totale de l'écran
              SizedBox(
                  height: size.height * 0.03), //3% de la hauteur totale de l'écran
              ChamptDeMail(
                hintText: "Votre email",
                controller: _emailcontroller,
              ),
              SizedBox(
                  height: size.height * 0.03), //3% de la hauteur totale de l'écran
              ChampsPassword(
                controller: _passwordcontroller,
                cotext: text1,
              ),
              SizedBox(
                  height: size.height * 0.03), //3% de la hauteur totale de l'écran
              RoundButton(
                text: "Se connecter",
                press: () => login(context),
              ),
              SizedBox(
                height: size.height * 0.03,
              ), //3% de la hauteur totale de l'écran
              VouloirUnCompte(press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return const SignUpScreen();
                  }),
                );
              }),
              const Diverser(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AutherConnectionMethode(
                    iconLink: "assets/icons/facebook.svg",
                    press: () {},
                  ),
                  AutherConnectionMethode(
                    iconLink: "assets/icons/twitter.svg",
                    press: () {},
                  ),
                  AutherConnectionMethode(
                    iconLink: "assets/icons/google-plus.svg",
                    press: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
typedef Navigate = void Function();