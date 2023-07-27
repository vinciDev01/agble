import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size =
        MediaQuery.of(context).size; //Ceci sera la taille totale de l'écran
    return SizedBox(
      width: double.infinity, //Largeur totale de l'écran
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
              top: 0,
              left: 0,
              child: Image.asset(
                "assets/images/main_top.png",
                width: size.width * 0.3,
              )),
          Positioned(
            right: 0,
            bottom: 0,
            child: Image.asset(
              "assets/images/login_bottom.png",
              width: size.width * 0.5,
            ),
          ),
          child
        ],
      ),
    );
  }
}
