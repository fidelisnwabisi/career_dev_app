import 'package:flutter/material.dart';

class ScreenTitle extends StatelessWidget {
  final String text;
  final Color color;
  const ScreenTitle({
    super.key,
    required this.text,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(color: color, fontSize: 36, fontWeight: FontWeight.bold),
    );
  }
}
