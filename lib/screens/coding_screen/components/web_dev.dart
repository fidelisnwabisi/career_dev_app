import 'package:career_dev_app/utils/course_button.dart';
import 'package:career_dev_app/utils/title_text.dart';
import 'package:flutter/material.dart';

class WebDeveScreen extends StatelessWidget {
  const WebDeveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20).copyWith(
            bottom: 30,
            top: 20,
          ),
          child: Column(
            children: [
              const TitleText(text: "Web Development"),
              const Placeholder(
                strokeWidth: 6,
                fallbackHeight: 220,
                fallbackWidth: 300,
              ),
              // const SizedBox(height: 20),
              const TitleText(text: "Video"),
              // const SizedBox(height: 20),
              const Placeholder(
                strokeWidth: 6,
                fallbackHeight: 220,
                fallbackWidth: 300,
              ),
              const SizedBox(height: 20),
              CourseButton(text: "Share", onPressed: () {})
            ],
          ),
        ),
      ),
    );
  }
}
