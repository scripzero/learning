import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyApp {
  static String title = "วิทยาการคำนวณ โดย ครูเมย์";
  static List<MenuItem> menus = [
    MenuItem(title: "หน้าแรก", icon: Icons.home, link: "/"),
    MenuItem(title: "บทเรียน", icon: Icons.school, link: "/lecture"),
    MenuItem(title: "ใบงาน", icon: Icons.file_copy, link: "/work"),
    MenuItem(title: "ครูผู้สอน", icon: Icons.edit_document, link: "/teacher"),
    MenuItem(title: "แบบทดสอบ", icon: Icons.edit_document, link: "/exam"),
    // MenuItem(title: "เพิ่มเติม", icon: Icons.star, link: "/extra"),
  ];
  static Future<void> launch(String url, {bool isNewTab = true}) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(
        Uri.parse(url),
        webOnlyWindowName: isNewTab ? '_blank' : '_self',
      );
    } else {}
  }
}

class MenuItem {
  String title = "";
  IconData icon = Icons.book;
  String link = "";

  MenuItem({required this.title, required this.icon, required this.link});
}
