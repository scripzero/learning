import 'package:flutter/material.dart';
import 'package:learning/components/my_page_view.dart';

class ExtraPage extends StatelessWidget {
  const ExtraPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MyPageView(childrens: [Text("เพิ่มเติม")]);
  }
}
