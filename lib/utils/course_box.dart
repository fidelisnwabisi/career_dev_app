import 'package:flutter/material.dart';

class CourseBox extends StatelessWidget {
  final String text;
  final Function() onPressed;

  const CourseBox({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.only(left: 10, right: 10),
        height: 200,
        width: 150,
        decoration: const BoxDecoration(color: Colors.amber),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text),
          ],
        ),
      ),
    );
  }
}
