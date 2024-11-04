import 'package:flutter/material.dart';
import 'package:learning/components/my_page_view.dart';

class WorkPage extends StatelessWidget {
  const WorkPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MyPageView(childrens: [Text("ใบงาน")]);
  }
}
