import 'package:agble/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:agble/Screens/Login/components/vouloir_un_compte.dart';
//import 'package:flutter_svg/svg.dart';
import '../../../components/rounded_button.dart';
import '../../../components/alert_controller.dart';

// import '../../Welcome/welcome_screen.dart';
import '../../Login/login_screen.dart';
import '../../compoments/champs_de_mail.dart';
import '../../compoments/champs_password.dart';
import '../../compoments/icon_connection.dart';
import '../../compoments/separateur.dart';
import 'background.dart';

class Body extends StatelessWidget {
  //Text controller
  final _emailcontroller = TextEditingController();
  final _passwordcontroller1 = TextEditingController();
  final _passwordcontroller2 = TextEditingController();
  final _auth = FirebaseAuth.instance;
  final Navigate navigate ;

  Body({super.key, required this.navigate});

  //Pres

  void signUp(BuildContext context) async {
    String email = _emailcontroller.text.trim();
    String password = _passwordcontroller1.text.trim();
    String password2 = _passwordcontroller2.text.trim();

    if (password2 == password){
      if (email.isNotEmpty && password.isNotEmpty) {
        try {
          await _auth.createUserWithEmailAndPassword(
            email: email,
            password: password,
          );
          // Redirection vers la page de connexion après l'inscription réussie
          navigate(
          );
        } on FirebaseAuthException catch (e) {
          // Gérer les erreurs lors de l'inscription
          if (e.code == 'email-already-in-use') {
            AlertController(
              titre: 'Erreur d\'inscription',
              libelle: 'Ce compte existe déjà. ',
            ).show(context);
          }
        }
      } else {
        // Gérer le cas où l'adresse e-mail ou le mot de passe est vide
        AlertController(
            titre: 'Erreur d\'inscription',
            libelle: 'Veuillez remplir tous les champs.')
            .show(context);
      }
    }
    else{
      // Gérer le cas où les mots de passe ne correspondent pas
      AlertController(
          titre: 'Erreur Password',
          libelle: 'Les mots de passe ne correspondent pas')
          .show(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    // Création de la taille de l'écran
    Size size = MediaQuery.of(context).size;

      //Pour permettre à ce que les 
    return SingleChildScrollView(
      child: Background(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            "S'inscrire",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),

          /*SizedBox(
            height: size.height * 0.1,
          ), //3% de la hauteur totale de l'écran

          SvgPicture.asset(
            "assets/icons/signup.svg",
            height: size.height * 0.35,
          ),*/

          SizedBox(
            height: size.height * 0.03,
          ),

          SizedBox(
            height: size.height * 0.03,
          ), // 3% de la hauteur totale de l'écran

          ChamptDeMail(hintText: "Votre email", controller: _emailcontroller),

          SizedBox(
              height: size.height * 0.03), //3% de la hauteur totale de l'écran

          ChampsPassword(
            controller: _passwordcontroller1,
            cotext: text1,
          ),

          SizedBox(
            height: size.height * 0.03,
          ), //3% de la hauteur totale de l'écran

          ChampsPassword(
              controller: _passwordcontroller2,
              cotext: text2
          ),

          SizedBox(
            height: size.height * 0.03,
          ), //3% de la hauteur totale de l'écran

          RoundButton(
            text: "S'inscrire",
            press: () => signUp(context),
          ),

          SizedBox(
            height: size.height * 0.03,
          ),
          VouloirUnCompte(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const LoginScreen();
                    },
                  ),
                );
              }),
          SizedBox(
            height: size.height * 0.02,
          ),
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
    );
  }
}

typedef Navigate = void Function();

