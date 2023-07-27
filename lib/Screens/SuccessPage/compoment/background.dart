import 'package:agble/constants.dart';
import 'package:flutter/material.dart';

class ArrierePlan extends StatelessWidget {
  final String titreAnimation;
  final Widget child;
  const ArrierePlan({
    required this.titreAnimation,
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; // Obtenir la taille totale de l'écran
    return Stack(
      children:[
        Container(
          height: size.height,
          color: Colors.grey[300],
        ),
        /*Container(
        width: size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover, // Pour redimensionner l'image pour couvrir tout le conteneur
            image: ExactAssetImage('assets/images/background.jpg'),
          ),
        ),
        child: Center(
          child: Text(
            titreAnimation,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ),
      ),*/
        SingleChildScrollView(
        child: child,)
        //ExactAssetImage('assets/icons/chat.jpg'),
        ],
    );
  }
}