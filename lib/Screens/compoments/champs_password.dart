import 'package:flutter/material.dart';
import '../../constants.dart';
import 'champs_de_mail.dart';

//Création du champ de mot de passe
class ChampsPassword extends StatefulWidget {
  final TextEditingController controller;
  final String cotext;

    //Constructeur de la classe
  const ChampsPassword({
    Key? key,
    required this.controller,
    required this.cotext,
  }) : super(key: key);

  @override
  _ChampsPasswordState createState() => _ChampsPasswordState();
}

//Pour cacher les éléments entrés par l'utilisateur
class _ChampsPasswordState extends State<ChampsPassword> {
  bool _visibilite = false;

  @override
  void initState() {
    super.initState();
    _visibilite = false;//Visibilité cachée lorsqu'il y a une saisie(par defaut)
  }

  @override
  Widget build(BuildContext context) {
    return TextContainer(
      child: TextField(
        obscureText: !_visibilite,
        decoration: InputDecoration(
          hintText: widget.cotext,
          icon: const Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          suffixIcon: IconButton(
            icon: Icon(
              _visibilite ? Icons.visibility : Icons.visibility_off,  //Icône permettant la visibilité des éléments
              color: kPrimaryColor,
            ),
            onPressed: () {
              setState(() {
                _visibilite = !_visibilite;
              });
            },
          ),
          border: InputBorder.none,
        ),
        controller: widget.controller,
      ),
    );
  }
}