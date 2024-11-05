import 'package:flutter/material.dart';
import 'package:learning/components/my_page_view.dart';

class TeacherPage extends StatelessWidget {
  const TeacherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MyPageView(childrens: [
      Image.asset("assets/img/10.jpg"),
      Image.asset("assets/img/11.jpg"),
    ]);
  }
}
