import 'package:flutter/material.dart';
import '../constants.dart';

class RoundButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  const RoundButton({
    super.key,
    required this.text,
    required this.press,
    this.color = kPrimaryColor,
    this.textColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    Size size =
        MediaQuery.of(context).size; //Ceci sera la taille totale de l'écran
    return SizedBox(
      width: size.width * 0.8, //80% de la largeur totale de l'écran
      child: //Boutton
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(20, 40),
              backgroundColor: color,
              elevation: 5,//Degré d'augmentation
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20), //margin des bouttons
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(29.0),//Bords arrondies de anière circulaire
              ),
            ),
            onPressed: press as void Function()?,
            child: Text(
          text,
          style: TextStyle(color: textColor),
        ),
      ),
    );
  }
}
