import 'package:career_dev_app/screen/coding_screen/ai_ml.dart';
import 'package:career_dev_app/screen/coding_screen/cyber_sec.dart';
import 'package:career_dev_app/screen/coding_screen/mobile_dev.dart';
import 'package:career_dev_app/screen/coding_screen/web_dev.dart';
import 'package:career_dev_app/utils/course_button.dart';
import 'package:career_dev_app/utils/title_text.dart';
import 'package:flutter/material.dart';

class CodingScreen extends StatelessWidget {
  const CodingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const TitleText(text: "Coding Screen"),
          const SizedBox(height: 20),
          CourseButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const WebDeveScreen()));
            },
            text: "Web Development",
          ),
          const Spacer(),
          CourseButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const MobileDevScreen()));
            },
            text: "Mobile Development",
          ),
          const Spacer(),
          CourseButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => const CyberSceurityScreen()));
            },
            text: "Cyber Security",
          ),
          const Spacer(),
          CourseButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const AIMLScreen()));
            },
            text: "AI & Machine Learning",
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
