import 'package:agble/constants.dart';
import 'package:flutter/material.dart';

class CloudStorageInfo {
  final String? svgSrc, title, totalStorage;
  final int? numOfFiels, percentage;
  final Color? color;

  CloudStorageInfo(
      {this.svgSrc,
      this.title,
      this.totalStorage,
      this.numOfFiels,
      this.percentage,
      this.color});
}

List demoMyFiels = [
  CloudStorageInfo(
    title: "Users",
    numOfFiels: 700,
    svgSrc: "assets/icons/abon.svg",
    totalStorage: "700",
    color: primaryColor,
    percentage: 70,
  ),
  CloudStorageInfo(
    title: "Telechargements",
    numOfFiels: 700,
    svgSrc: "assets/icons/download.svg",
    totalStorage: "700 apk",
    color: Color(0xFFFFA113),
    percentage: 70,
  ),
  CloudStorageInfo(
    title: "Projets",
    numOfFiels: 900,
    svgSrc: "assets/images/project_stat.png",
    totalStorage: "800%",
    color: Color(0xFFA4CDFF),
    percentage: 30,
  ),
  CloudStorageInfo(
    title: "Projets aboutis",
    numOfFiels: 650,
    svgSrc: "assets/icons/drop_box.svg",
    totalStorage: "65%",
    color: Color(0xFF007EE5),
    percentage: 78,
  ),
];
