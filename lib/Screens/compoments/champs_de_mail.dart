import 'package:flutter/material.dart';
import '../../constants.dart';

//Création du chamo de mail
class ChamptDeMail extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final TextEditingController controller;
  const ChamptDeMail({
    Key? key,
    required this.hintText,
    this.icon = Icons.person,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextContainer(
      child: TextFormField(
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: kPrimaryColor,
          ),
          hintText: "Votre email",
          border: InputBorder.none,
        ),
        controller: controller,
        style: const TextStyle(color: kPrimaryColor),
        validator: (value) {
          if (value!.isEmpty) {
            return 'Veuillez entrer votre email';
          }
          return null;
        },
      ),
    );
  }
}

//Zone de texte
class TextContainer extends StatelessWidget {
  final Widget child;
  const TextContainer({
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      padding: const EdgeInsets.symmetric(
        vertical: 1.0,
        horizontal: 5,
      ),
      width: size.width * 0.8, //80% de la largeur totale de l'écran
      decoration: BoxDecoration(
        color: kPrimaryLightColor,
        borderRadius: BorderRadius.circular(29),
      ),
      child: child,
    );
  }
}
