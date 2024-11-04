import 'package:flutter/material.dart';

import 'package:learning/components/nav.dart';

class MyPageView extends StatelessWidget {
  final List<Widget> childrens;
  const MyPageView({super.key, required this.childrens});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const MyNavBar(),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: childrens,
            ),
          ))
        ],
      ),
    );
  }
}
