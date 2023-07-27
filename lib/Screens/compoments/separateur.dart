import 'package:flutter/material.dart';
import '../../constants.dart';

/*
Les options de connexions avec d'autres comptres
*/
class Diverser extends StatelessWidget {
  const Diverser({super.key});

  @override
  Widget build(BuildContext context){
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width *0.8,
      child: Row(
        children: <Widget>[
          traitDeSeparation(),
          const Padding(padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text("OR",style: TextStyle(
              color: kPrimaryColor,
              fontWeight: FontWeight.w600,
            ),
            ),
          ),
          traitDeSeparation(),
        ],
      ),
    );
  }

  Expanded traitDeSeparation() {
    return const Expanded(
      child: Divider(
        color: Color(0xFFD9D9D9),
        height: 1.5,
      ),
    );
  }
}