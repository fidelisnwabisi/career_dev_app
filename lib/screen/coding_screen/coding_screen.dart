import 'package:career_dev_app/utils/title_text.dart';
import 'package:flutter/material.dart';

class CodingScreen extends StatelessWidget {
  const CodingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const TitleText(text: "Coding Screen"),
          Container(
              height: 30,
              decoration: BoxDecoration(color: Colors.amber),
              child: Center(child: Text("Web Development")))
        ],
      ),
    );
  }
}
