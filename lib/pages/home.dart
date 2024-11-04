import 'package:flutter/material.dart';
import 'package:learning/components/card.dart';
import 'package:learning/components/my_page_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MyPageView(childrens: [
      Image.asset("assets/img/home.jpg"),
      Image.asset("assets/img/home2.jpg"),
      Container(
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.all(10),
        color: const Color.fromRGBO(233, 230, 230, 1),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                SizedBox(
                  height: 20,
                ),
                Text(
                  "มาตรฐานการเรียนรู้และตัวชี้วัด",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "มาตรฐานการเรียนรู้",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "ว. 4.2 เทคโนโลยี (วิทยาการคำนวณ)เข้าใจ และใช้แนวคิดเชิงคำนวณในการแก้ปัญหาที่พบในชีวิตจริงอย่างเป็นขั้นตอนและเป็นระบบ ใช้เทคโนโลยีสารสนเทศและการสื่อสารในการเรียนรู้การทำงาน และการแก้ปัญหาได้อย่างมีประสิทธิภาพ รู้เท่าทัน และมีจริยธรรม"),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "ตัวชี้วัด",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "ม.3/1 พัฒนาแอปพลิเคชันที่มีการบูรณาการกับวิชาอื่นอย่างสร้างสรรค์\nม.3/2 รวบรวมข้อมูล ประมวลผล ประเมินผล นำเสนอข้อมูลและสารสนเทศ ตามวัตถุประสงค์โดยใช้ซอฟต์แวร์หรือบริการบนอินเทอร์เน็ตที่หลากหลาย\nม.3/3 ประเมินความน่าเชื่อถือของข้อมูล วิเคราะห์สื่อและผลกระทบจากการให้ข่าวสารที่ผิด เพื่อการใช้งานอย่างรู้เท่าทัน\nม.3/4 ใช้เทคโนโลยีสารสนเทศอย่างปลอดภัยและมีความรับผิดชอบต่อสังคม ปฏิบัติตามกฎหมายเกี่ยวกับคอมพิวเตอร์ ใช้ลิขสิทธิ์ของผู้อื่นโดยชอบธรรม"),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "รวมทั้งหมด 4 ตัวชี้วัด",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/lecture');
                },
                child: Text("คลิกเพื่อเข้าสู่่บทเรียน")),
          ],
        ),
      ),
      Container(
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.all(10),
        color: Color.fromARGB(255, 255, 255, 255),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "หน่วยการเรียนรู้ที่ 1",
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Expanded(
                flex: 1,
                child: MyCard(
                    title: "การออกข้อกำหนด ระเบียบและกฏหมายต่างๆ",
                    image: "assets/img/c1.png",
                    info:
                        "ที่เกี่ยวข้องกับเทคโนโลยีสารสนเทศ มีวัตถุประสงค์เพื่อให้การใช้งานเทคโนโลยีสารสนเทศเป็นไป ด้วยความเรียบร้อย ซึ่งปัจจุบันมี พรบ.คอมพิวเตอร์ 2 ฉบับ ได้แก่ พรบ.คอมพิวเตอร์ ปี 2550 และ พรบ.คอมพิวเตอร์ พ.ศ. 2560"),
              ),
              SizedBox(
                width: 5,
              ),
              Expanded(
                flex: 1,
                child: MyCard(
                    title: "การรู้เท่าทันสื่อ",
                    image: "assets/img/c2.png",
                    info:
                        "ความสามารถในการป้องกันตนเองจากการถูกโน้มน้าม ด้วยเนื้อหาที่เป็นเท็จและมีผลกระทบต่อผู้รับสื่อ เพื่อไม่ให้ตกเป็นเครื่องมือทางการตลาดหรือผลประโยชน์ที่สื่อนำเสนอการรู้เท่าทันสื่อนั้น ผู้รับสารต้องสามารถตีความ วิเคราะห์ แยกแยะเนื้อหาสาระของสื่อ คิดก่อนที่จะทำไปเผยแพร่"),
              ),
              SizedBox(
                width: 5,
              ),
              Expanded(
                flex: 1,
                child: MyCard(
                    title: "การใช้งานลิขสิทธิ์ที่เป็นธรรม",
                    image: "assets/img/c3.png",
                    info:
                        "เป็นการใช้ผลงานที่มีลิขสิทธิ์ (Copyright) โดยไม่กระทบกับเจ้าของลิขสิทธิ์ หรือมีข้กยกเว้นให้ใช้งานลิขสิทธิ์บางอย่างได้โดยไม่ต้องขออนุญาต"),
              )
            ])
          ],
        ),
      )
    ]);
  }
}
