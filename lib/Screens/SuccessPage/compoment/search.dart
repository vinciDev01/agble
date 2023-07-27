import 'package:agble/constants.dart';
import 'package:flutter/material.dart';

class Search extends StatelessWidget{
  const Search({super.key});

  @override
  Widget build(BuildContext context){
    return Column(
      children: [Container(
        height: 110,
        padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 30),
        child: Stack(
          children: [
            TextField(
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  )
                ),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                prefixIcon: const Icon(Icons.location_searching_sharp,
                ),
                hintText: "Rechercher",
                hintStyle: TextStyle(
                  fontSize: 14,
                  color: Colors.grey.withOpacity(0.7),
                ),
              ),
            ),
            Positioned(
              right: 12,
              bottom: 10,
                child: Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: kPrimaryColor,
                  ),
                  child: const Icon(
                    Icons.filter_alt,
                    color: kPrimaryLightColor,
                    size: 25,
                  ),
                ),
            ),
          ],
        ),

      ),]
    );
  }
}