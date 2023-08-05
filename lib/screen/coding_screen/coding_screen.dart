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
                  MaterialPageRoute(builder: (_) => const WebDevelopment()));
            },
            text: "Web Development",
          ),
          const Spacer(),
          CourseButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const WebDevelopment()));
            },
            text: "Mobile Development",
          ),
          const Spacer(),
          CourseButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const WebDevelopment()));
            },
            text: "Cyber Security",
          ),
          const Spacer(),
          CourseButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const WebDevelopment()));
            },
            text: "AI & Machine Learning",
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
