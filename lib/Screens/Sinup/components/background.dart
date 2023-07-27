import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: double.infinity,
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              "assets/images/signup_top.png",
              width: size.width * 0.3, //30% de la largeur totale de l'écran
            ),
          ),
      Positioned(
        //Positionnement de l'image: en bas à gauche
        bottom: 0,
        right: 0,
        child: RotatedBox(
          quarterTurns: 15,
          child : Image.asset(
            "assets/images/main_bottom.png",
            width: size.width * 0.2, //20% de la largeur totale de l'écran
          ),
        ),
      ),
          child,
        ],
      ),
    );
  }
}
