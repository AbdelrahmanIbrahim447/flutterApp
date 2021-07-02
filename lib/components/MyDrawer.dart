import 'package:flutter/material.dart';
import 'package:aeadty/routes/route.dart' as routes;

import 'DrawerList.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Drawer(
        child: SafeArea(
          child: ListView(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 40.0),
                  width: 50,
                  height: 80 ,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/logo.png')
                    )
                  ),
                ),
               DrawerList(
                    title: 'الصفحة الرئيسية',
                    icon: Icons.home_filled,
                    routeName: routes.homeScreen
                ),
              ]
          ),
        )
    );
  }
}
