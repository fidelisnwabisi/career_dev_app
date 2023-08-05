import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  final String text;
  const TitleText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: const TextStyle(
              fontSize: 42,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
