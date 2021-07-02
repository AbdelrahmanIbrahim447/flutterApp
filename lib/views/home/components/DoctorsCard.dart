import 'package:aeadty/helpers/constants.dart';
import 'package:flutter/material.dart';

class DoctorsCard extends StatelessWidget {
  final String title;
  final String body;
  final String imageName;

  const DoctorsCard({required this.title, required this.body, required this.imageName});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(left: 10, right: 10),
      borderOnForeground: true,
      elevation: 4,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image(
              image : AssetImage(imageName),
              height: 300,
              width: 250,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700
            ),
          ),
          Text(
            body,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400
            ),
          ),

        ],
      ),
    );
  }
}
