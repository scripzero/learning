import 'package:flutter/material.dart';
import 'package:learning/config/app.dart';
import 'package:url_launcher/url_launcher.dart';

class MyCard extends StatelessWidget {
  String title;
  String image;
  String info;
  String link;
  MyCard(
      {super.key,
      required this.title,
      this.image = "",
      this.info = "",
      this.link = ""});

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          image != "" ? Image.asset(image) : Container(),
          Text(
            title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          info != ""
              ? Text(
                  info,
                )
              : Container(),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () async {
                await MyApp.launch(link, isNewTab: true);
              },
              child: Text("คลิกที่นี่เพื่อเข้าสู่บทเรียน"))
        ]);
  }
}
