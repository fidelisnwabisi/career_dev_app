import 'package:career_dev_app/screen/coding_screen/coding_screen.dart';
import 'package:career_dev_app/screen/management_screen/managenent_screen.dart';
import 'package:career_dev_app/screen/marketing_screen/marketing_screen.dart';
import 'package:career_dev_app/screen/writing_screen/writing_screen.dart';
import 'package:career_dev_app/utils/course_box.dart';
import 'package:career_dev_app/utils/title_text.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Career Development App",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TitleText(text: "Select Course"),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Divider(),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CourseBox(
                  text: "Coding",
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const CodingScreen(),
                    ),
                  ),
                ),
                CourseBox(
                  text: "Marketing",
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const MarketingScreen(),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CourseBox(
                  text: "Management",
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const ManagementScreen(),
                    ),
                  ),
                ),
                CourseBox(
                  text: "Writing",
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const WritingScreen(),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
