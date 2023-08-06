import 'package:career_dev_app/utils/title_text.dart';
import 'package:flutter/material.dart';

class AIMLScreen extends StatelessWidget {
  const AIMLScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: TitleText(text: "AI & Machine Learning"),
      ),
    );
  }
}
