import 'package:flutter/material.dart';
import 'package:learning/components/my_page_view.dart';
import 'package:learning/config/app.dart';
import 'package:webviewx/webviewx.dart';

class ExamPage extends StatelessWidget {
  const ExamPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MyPageView(childrens: [
      Image.asset("assets/img/quiz1.jpg"),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Text(
                  "แบบสอบเก็บคะแนน",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "ข้อสอบวิทยาการคำนวณ หน่วยการเรียนรู้ที่ 1 เรื่องการใช้เทคโนโลยีอย่างนั้นเท่ากัน มี 40 ข้อ 20 คะแนน ใช้เวลาในการทำข้อสอบ 60 นาที"),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                    onPressed: () async {
                      await MyApp.launch(
                          "https://docs.google.com/forms/d/e/1FAIpQLSdwy82ilG2r8JQtgjAzmnCJLqoFdVQGugNgw5vJPWr4OnKsFA/viewform",
                          isNewTab: true);
                    },
                    child: Text("คลิกที่นี่เพื่อเข้าสู่บทเรียน"))
              ],
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Expanded(
            flex: 1,
            child: Image.asset("assets/img/quiz2.jpg"),
          ),
        ]),
      ),
      WebViewX(
        width: MediaQuery.of(context).size.width - 10,
        height: 600,
        initialContent:
            "https://quizizz.com/embed/quiz/6614f7421f848ba54ac4a433",
      ),
      SizedBox(
        height: 50,
      )
    ]);
  }
}
