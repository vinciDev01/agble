import 'package:flutter/material.dart';

//Création de la classe AlertController
class AlertController {
  final String titre;
  final String libelle;

  AlertController({
    required this.titre,//Paramètres obligatoires titre et libelle pour chaque message alert
    required this.libelle,
  });

  //Création du constructeur
  void show(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(titre),
          content: Container(
            constraints: const BoxConstraints(maxWidth: 300),
            child: Text(libelle),
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }
}