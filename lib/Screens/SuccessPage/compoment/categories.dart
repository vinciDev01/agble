//import 'package:agble/constants.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_animated_button/flutter_animated_button.dart';

//Création de la super classe Categorie
class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  _Categories createState() => _Categories();
}

//Création de la classe privée Categorie
class _Categories extends State<Categories> {
  bool visibleVariable = false;
  double x = 200; //Initialisation de la valeur de x
  double y = 80; //Initialisation de la valeur de y

  //Arrondissement des boutons
  BorderRadiusGeometry borderR = const BorderRadius.only(
    topLeft: Radius.circular(20),
    topRight: Radius.circular(20),
    bottomLeft: Radius.circular(20),
    bottomRight: Radius.circular(20),
  );

  //Créationde la liste Categorie
  final categories = [
    {
      'image': const AssetImage("assets/images/background.jpg"),
      'titre': "ABALEPEDOGAN",
      'date': "16-05-20",
      'superficie': "4 hectares",
      'Nombre de cultures enregistrés':"4",
      'Estimation de revenu' : "400 000",
      'Type': "Mensuel",
    },
    {
      'image': const AssetImage("assets/images/background.jpg"),
      'titre': "KPOGAN",
      'date': "23-07-20",
    },
    {
      'image': const AssetImage("assets/images/background.jpg"),
      'titre': "ZONGO",
      'date': "03-02-21",
    },
    {
      'image': const AssetImage("assets/images/background.jpg"),
      'titre': "TIPHO",
      'date': "18-09-22",
    },
    {
      'image': const AssetImage("assets/images/background.jpg"),
      'titre': "CATRO",
      'date': "25-02-23",
    },
  ];

  //Gestion du deroulement des listes
   flash(){
    setState(() {
      if (y == 190 && visibleVariable == true) {
        y = 80;
        visibleVariable = false;
      } else {
        y = 190;
        visibleVariable = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
        child: Container(
          height: 500,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 500,
                child: ListView.separated(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: ((context,index) => Column(
                    children: [
                      const SizedBox(
                        height: 25,
                      ),
                      Container(
                        height: x,
                        width: y ,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: borderR,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0.0, 1.0),
                              blurRadius: 6.0,
                            )
                          ]
                        ),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 900),
                          child: GestureDetector(
                            onTap: () => flash() ,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  width: 5,
                                ),
                                Column(
                                  children: [
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    CircleAvatar(
                                    backgroundImage: categories[index]['image'] as AssetImage,
                                  ),
                                  ]
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Visibility(
                                  visible: visibleVariable,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text(categories[index]['titre'] as String,
                                      style: const TextStyle(
                                          fontSize: 12,
                                          color: Colors.black87,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Roboto Bold'
                                      ),
                                      ),
                                      Text(categories[index]['date'] as String,
                                      style: const TextStyle(
                                          fontSize: 10,
                                          color: Colors.black38,
                                          fontWeight: FontWeight.normal,
                                          fontFamily: 'Roboto Bold'
                                      ),)
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
                  separatorBuilder: (
                          (context, index) =>  const SizedBox(
                    width: (18.0),
                  )),
                  itemCount: categories.length,
                ),
              ),
            ],
          ),
        )
    );
  }
}


