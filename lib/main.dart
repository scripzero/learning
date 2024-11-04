import 'package:flutter/material.dart';
import 'package:learning/components/nav.dart';
import 'package:learning/pages/exam.dart';
import 'package:learning/pages/extra.dart';

import 'package:learning/pages/home.dart';
import 'package:learning/pages/lecture.dart';
import 'package:learning/pages/work.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'วิทยาการคำนวณ โดย ครูเมย์',
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/lecture': (context) => const LecturePage(),
        '/work': (context) => const WorkPage(),
        '/exam': (context) => const ExamPage(),
        '/extra': (context) => const ExtraPage(),
      },
      // home: Scaffold(
      //   body: Container(
      //     padding: EdgeInsets.all(9),
      //     color: Colors.black87,
      //     child: HomePage(),
      //   ),
      // ),
    );
  }
}
