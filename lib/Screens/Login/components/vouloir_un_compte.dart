import 'package:flutter/material.dart';
import '../../../constants.dart';

class VouloirUnCompte extends StatelessWidget {
  final bool login;
  final press;
  const VouloirUnCompte({
    this.login = true,
    this.press,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login
              ? "Vous n'avez pas de compte ? "
              : "Vous avez déjà un compte ? ",
          style: const TextStyle(color: kPrimaryColor),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? "S'inscrire" : "Se connecter",
            style: const TextStyle(
                color: kPrimaryColor, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
