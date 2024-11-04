import 'package:flutter/material.dart';
import 'package:learning/components/my_page_view.dart';

class LecturePage extends StatelessWidget {
  const LecturePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MyPageView(childrens: [
      Image.asset("assets/img/home.jpg"),
      Image.asset("assets/img/home2.jpg"),
    ]);
  }
}
