import 'package:flutter/material.dart';
import '../../../constants.dart';
import 'package:agble/admin_pannel/graphics/1.graphic_design.dart';
import '6.statics_data.dart';

class StorageDetails extends StatelessWidget {
  const StorageDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Nombre d'utilisateurs",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: defaultPadding),
          Chart(),
          StorageInfoCard(
            svgSrc: "assets/images/abonnees.png",
            title: "Utilisateurs",
            amountOfFiles: "750 users",
            numOfFiles: 1000,
          ),
          StorageInfoCard(
            svgSrc: "assets/images/project_stat.png",
            title: "Projets crées",
            amountOfFiles: "900",
            numOfFiles: 1000,
          ),
          StorageInfoCard(
            svgSrc: "assets/images/statistiques.png",
            title: "Projects en cours...",
            amountOfFiles: "500",
            numOfFiles: 1000,
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/download.svg",
            title: "Telechargements",
            amountOfFiles: "700",
            numOfFiles: 1000,
          ),
        ],
      ),
    );
  }
}
