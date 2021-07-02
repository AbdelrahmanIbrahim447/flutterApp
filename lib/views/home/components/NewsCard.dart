import 'package:aeadty/helpers/constants.dart';
import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  final String title;
  final String body;
  final String date;
  final String imageName;

  const NewsCard({required this.title, required this.body, required this.imageName ,required this.date});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      child: Card(
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
                width: 350,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              title,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700
              ),
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 15,),
            Divider(height: 2.0,thickness: 0.5,color: Colors.black,),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextIcon(text : date,icon: Icons.keyboard_arrow_left_rounded ,)
                  ),
                  TextIcon(text : date,icon: Icons.date_range,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TextIcon extends StatelessWidget {
  const TextIcon({
    required this.icon,
    required this.text,
  }) ;

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
          children: [
            Text(
              text ,
              style: TextStyle(
                color: main_color,
              ),
            ),
            Icon(icon, color: main_color,),
          ],
        ),
    );
  }
}
