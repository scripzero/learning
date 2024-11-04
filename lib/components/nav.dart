import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:learning/components/nav_menu.dart';
import 'package:learning/config/app.dart';

class MyNavBar extends StatelessWidget {
  const MyNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black87,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(
            children: List<NavMenu>.generate(
                MyApp.menus.length,
                (index) => NavMenu(MyApp.menus[index].title,
                    MyApp.menus[index].icon, MyApp.menus[index].link)))
      ]),
    );
  }
}
