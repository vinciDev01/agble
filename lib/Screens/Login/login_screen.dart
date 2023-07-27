import 'package:flutter/material.dart';
import 'components/body.dart';
import '../../Screens/SuccessPage/success_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Loginup(
        navigate: (){
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const  Acueil()),
        );
      },),
    );
  }
}
