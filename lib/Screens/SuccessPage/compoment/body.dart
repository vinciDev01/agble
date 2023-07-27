//import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
//import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
//import '../../../constants.dart';
import 'background.dart';
import 'categories.dart';
import 'header.dart';
import 'search.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
        return ArrierePlan(
            titreAnimation: "",
            child: Column(
              children: [
              const Header(),
              const Search(),
              Categories(),
              ],
            ),
          );
  }
}
