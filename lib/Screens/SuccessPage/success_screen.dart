import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';
import 'compoment/body.dart';

class Acueil extends StatelessWidget {
  const Acueil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      //backgroundColor: Colors.white,
      body: const Body(),
      bottomNavigationBar:
      CurvedNavigationBar(
        buttonBackgroundColor: kPrimaryColor,
        backgroundColor: Colors.grey.shade300,
        color: kPrimaryColor,
        items: const [
          Icon(
            Icons.menu_book_outlined,
            color: Colors.white,
          ),
          Icon(
              Icons.pie_chart_outline_rounded,
              color: Colors.white
          ),
          Icon(
              Icons.candlestick_chart_rounded,
              color: Colors.white
          ),
          Icon(Icons.settings,
              color: Colors.white
          ),
        ],
      )
    );
  }
}

