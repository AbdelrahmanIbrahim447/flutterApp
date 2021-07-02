import 'package:aeadty/helpers/constants.dart';
import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  final String title;
  final String body;
  final IconData iconName;

  const HomeCard({required this.title, required this.body, required this.iconName});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      decoration: BoxDecoration(
          color: main_color,
          borderRadius: BorderRadius.circular(10)
      ),
      margin: EdgeInsets.only(left: 10,right: 5),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 18),
            child: ClipRRect(
              borderRadius : BorderRadius.circular(30),
              child: Container(
                width: 40 ,
                height: 40,
                color: Colors.white,
                child: Icon(
                    iconName
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(top : 15.0 ),
              child: Column(
                children: [
                  Text(title,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600
                    ),
                  ),
                  Expanded(
                    child: Text(
                      body,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );;
  }
}
