import 'package:flutter/material.dart';
import 'package:agble/constants.dart';
//import 'package:flutter_svg/svg.dart';
import '../../../components/rounded_button.dart';
import '../../Login/login_screen.dart';
import '../../Sinup/signup.dart';
import 'background.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size =
        MediaQuery.of(context).size; //Ceci sera la taille totale de l'écran
    return SingleChildScrollView(
      child: Background(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "Bienvenue sur AGBLE",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            /*SvgPicture.asset(
              "assets/icons/chat.svg",
              height: size.height * 0.45, //45% de la hauteur totale de l'écran
            ),*/
            SizedBox(
                height: size.height * 0.05), //5% de la hauteur totale de l'écran
            RoundButton(
              //Boutton de connexion
              color: kPrimaryColor,
              text: "Connexion",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            SizedBox(
                height: size.height * 0.02), //2% de la hauteur totale de l'écran
            RoundButton(
              //Boutton d'inscription
              color: kPrimaryLightColor,
              text: "Inscription",
              textColor: Colors.black,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return (SignUpScreen());
                    },
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
