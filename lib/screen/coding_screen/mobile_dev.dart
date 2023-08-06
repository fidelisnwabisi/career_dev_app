import 'package:career_dev_app/utils/title_text.dart';
import 'package:flutter/material.dart';

class MobileDevScreen extends StatelessWidget {
  const MobileDevScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: TitleText(text: "Mobile Development"),
      ),
    );
  }
}
