import 'package:flutter/material.dart';

class MarketingScreen extends StatelessWidget {
  const MarketingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Marketing Screen",
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
