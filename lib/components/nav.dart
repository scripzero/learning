import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:learning/components/nav_menu.dart';

class MyNavBar extends StatelessWidget {
  const MyNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      color: Colors.black87,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        const Text(
          "วิทยาการคำนวณ",
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
        Row(children: [
          NavMenu("หน้าแรก", Icons.home, "/"),
          NavMenu("บทเรียน", Icons.school, "/lecture"),
          NavMenu("ใบงาน", Icons.file_copy, "/work"),
          NavMenu("แบบทดสอบ", Icons.textsms_outlined, "/exam"),
          NavMenu("เพิ่มเติม", Icons.star_outline_sharp, "/extra"),
        ])
      ]),
    );
  }
}
