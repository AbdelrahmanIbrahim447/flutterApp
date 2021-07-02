import 'package:aeadty/helpers/constants.dart';
import 'package:flutter/material.dart';

class DrawerList extends StatelessWidget {
  final String title;
  final String routeName;
  final IconData icon;

  const DrawerList({required this.title, required this.routeName, required this.icon});
  @override

  Widget build(BuildContext context) {
    return  ListTile(
      leading: Icon(
        icon,
        color: main_color,
      ),
      title: Text(
        title ,
        style: TextStyle(fontSize: 18),
      ),
      onTap: (){
        Navigator.pushNamed(context, routeName);
      },
    );
  }
}
