import 'package:flutter/material.dart';
import 'package:learning/components/my_page_view.dart';

class ExamPage extends StatelessWidget {
  const ExamPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MyPageView(childrens: [Text("แบบทดสอบ")]);
  }
}
