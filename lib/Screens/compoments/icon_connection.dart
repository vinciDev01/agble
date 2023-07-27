import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../constants.dart';

class AutherConnectionMethode extends StatelessWidget {
  final String iconLink;
  final void Function() press;
  const AutherConnectionMethode({
    required this.iconLink,//Paramètre obligatoire:iconLink
    required this.press,//Paramètre obligatoire:press
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,//La fonction à executer lorsque l'utilisateur va cliquer sur le bouton de connexion
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),//Espace autour du bouton de connexion dans toutes les drections
        padding: const EdgeInsets.all(20),//Espace à l'interieur même du bouton de connexion dans toutes les directions
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: kPrimaryLightColor,
          ),
          shape: BoxShape.circle,//bord arrondies
        ),
        child: SvgPicture.asset(iconLink,
          height: 20,
          width:20 ,
        ),
      ),
    );
  }
}