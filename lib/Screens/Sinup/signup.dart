//import 'package:agble/constants.dart';
import 'package:flutter/material.dart';
import '../Login/login_screen.dart';
import 'components/body.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(
        navigate: (){
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const LoginScreen()),
          );
        },
      ),
    );
  }
}
