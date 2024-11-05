import 'package:flutter/material.dart';

import 'package:learning/components/nav.dart';
import 'package:learning/config/app.dart';

class MyPageView extends StatelessWidget {
  final List<Widget> childrens;
  final CrossAxisAlignment align;
  const MyPageView(
      {super.key,
      required this.childrens,
      this.align = CrossAxisAlignment.center});

  @override
  Widget build(BuildContext context) {
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    final bool isMobile = shortestSide < 720;
    Widget myDrawer() {
      return Container(
        color: Colors.white,
        width: 200,
        child: ListView.builder(
            itemCount: MyApp.menus.length,
            itemBuilder: (context, index) => ListTile(
                  leading: Icon(MyApp.menus[index].icon),
                  title: Text(MyApp.menus[index].title),
                  onTap: () {
                    Navigator.popAndPushNamed(context, MyApp.menus[index].link);
                  },
                )),
      );
    }

    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black87,
          title: Align(
            alignment: Alignment.centerLeft,
            child:
                Text(MyApp.title, style: const TextStyle(color: Colors.white)),
          ),
          actions: isMobile ? [] : const [MyNavBar()]),
      drawer: isMobile ? myDrawer() : null,
      body: Center(
        child: Column(
          children: [
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: align,
                children: childrens,
              ),
            ))
          ],
        ),
      ),
    );
  }
}
