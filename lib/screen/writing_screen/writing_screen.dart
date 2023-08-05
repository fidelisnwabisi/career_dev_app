import 'package:flutter/material.dart';

class WritingScreen extends StatelessWidget {
  const WritingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Writing Screen",
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
