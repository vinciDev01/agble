import 'package:agble/firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:agble/Screens/Welcome/welcome_screen.dart';
import 'package:agble/constants.dart';
import 'package:firebase_core/firebase_core.dart';

// ignore: prefer_const_constructors
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
  runApp(MyApp());
}

//Création de la classe MyApp qui va nous permettre de lancer l'applcation
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AGBLE Demo 1',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
        useMaterial3: true,
      ),
      home: const WelcomScreen(),
    );
  }
}
