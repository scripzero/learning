import 'package:flutter/material.dart';
import 'package:learning/components/my_page_view.dart';

class WorkPage extends StatelessWidget {
  const WorkPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MyPageView(childrens: [
      Image.asset("assets/img/home.jpg"),
      Image.asset("assets/img/home2.jpg"),
      Image.asset("assets/img/1.jpg"),
      Image.asset("assets/img/2.jpg"),
      Image.asset("assets/img/3.jpg"),
      Image.asset("assets/img/4.jpg"),
    ]);
  }
}
