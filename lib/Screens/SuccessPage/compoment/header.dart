import 'package:agble/constants.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,

  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(

      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
        left: 25,
        right: 25,
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
           Column(
             crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                const Text("Home",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto Bold'
                ),),
              SizedBox(
                height: size.width*0.01,
              ),
            ],
          ),
          CircleAvatar(
            backgroundColor: Colors.white38,
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notification_add_outlined,
                  color: kPrimaryColor,
                )
            ),
          )
        ],
      ),
    );
  }
}