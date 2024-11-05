import 'package:flutter/material.dart';
import 'package:image_network/image_network.dart';
import 'package:learning/components/my_page_view.dart';
import 'package:learning/config/app.dart';
import 'package:webviewx/webviewx.dart';

class Lecture {
  String title = "";
  String link = "";
  bool hasThumbnail = false;
  Lecture(this.title, this.link, {this.hasThumbnail = false});
}

class LecturePage extends StatelessWidget {
  const LecturePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Lecture> lecture_text = [
      Lecture("การใช่เทคโนโลยีสารสนเทศอย่างปลอดภัย (Canva)",
          "https://www.canva.com/design/DAGB2N3kQkY/l9gNtCBvA2gNBvktLbhSdg/edit"),
      Lecture("การใช่เทคโนโลยีสารสนเทศอย่างปลอดภัย (Powerpoint)",
          "https://docs.google.com/presentation/d/1cTf2_Qqne9MrS5sOPXZmZOOoSGSB6YGn/edit?usp=sharing&ouid=106755879141443651367&rtpof=true&sd=true"),
    ];
    List<Lecture> lecture_video = [
      Lecture("วิทยาการคำนวณ ม.3 l เหตุผลวิบัติ",
          "https://www.youtube.com/watch?v=Trl-NVRYq1M&t=2s",
          hasThumbnail: true),
      Lecture("เช็คให้ชัวร์ (วิทยาการคำนวณ ม.3 บทที่ 6)",
          "https://www.youtube.com/watch?v=DPC8L8mstQY",
          hasThumbnail: true),
      Lecture("กฎหมายน่ารู้ (วิทยาการคำนวณ ม.3 บทที่ 6 )",
          "https://www.youtube.com/watch?v=z3oEW1kvPak",
          hasThumbnail: true),
      Lecture("รู้ทันลิขสิทธิ์ [Copyright_Information] by_punpun",
          "https://www.youtube.com/watch?v=XPRrvR69Iyc",
          hasThumbnail: true),
      Lecture(
          "การใช้งานลิขสิทธิ์ที่เป็นธรรม ตอนที่ 1/2 (วิทยาการคำนวณ ม.3 บทที่ 6)",
          "https://www.youtube.com/watch?v=2CengVvRtMM",
          hasThumbnail: true),
      Lecture(
          "การใช้งานลิขสิทธิ์ที่เป็นธรรม ตอนที่ 2/2 (วิทยาการคำนวณ ม.3 บทที่ 6)",
          "https://www.youtube.com/watch?v=klyD1RxZODo",
          hasThumbnail: true),
    ];

    String getYoutubeThumbnail(String videoUrl) {
      final Uri? uri = Uri.tryParse(videoUrl);
      if (uri == null) {
        return "";
      }
      var q = 'https://img.youtube.com/vi/${uri.queryParameters['v']}/0.jpg';
      print(q);
      return q;
    }

    return MyPageView(childrens: [
      Image.asset("assets/img/10.jpg"),
      Image.asset("assets/img/home2.jpg"),
      const SizedBox(
        height: 20,
      ),
      Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "บทเรียน",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    ListView.builder(
                        shrinkWrap: true,
                        itemBuilder: (context, index) => ListTile(
                              onTap: () async {
                                await MyApp.launch(lecture_text[index].link,
                                    isNewTab: true);
                              },
                              title: Text(lecture_text[index].title),
                            ),
                        itemCount: lecture_text.length)
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "วีดีโอสื่อการสอน",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    ListView.builder(
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          String tmbnail =
                              getYoutubeThumbnail(lecture_video[index].link);
                          return Column(
                            children: [
                              ListTile(
                                leading: tmbnail != ""
                                    ? SizedBox(
                                        width: 50,
                                        height: 40,
                                        child: ImageNetwork(
                                          image: tmbnail,
                                          height: 40,
                                          width: 50,
                                        ),
                                      )
                                    : Container(),
                                onTap: () async {
                                  await MyApp.launch(lecture_video[index].link,
                                      isNewTab: true);
                                },
                                title: Text(lecture_video[index].title),
                              ),
                              const Divider(
                                height: 1,
                              ),
                              const SizedBox(
                                height: 10,
                              )
                            ],
                          );
                        },
                        itemCount: lecture_video.length)
                  ],
                ),
              ),
            ]),
      )
    ]);
  }
}
