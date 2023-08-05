import 'package:flutter/material.dart';

class CourseButton extends StatelessWidget {
  final String text;
  final Function() onPressed;
  const CourseButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
            color: Colors.amber,
            border: Border.all(
              color: const Color(0xFFa9d470),
            ),
            borderRadius: const BorderRadius.all(Radius.circular(12)),
            boxShadow: [
              BoxShadow(color: Colors.black.withOpacity(0.9), blurRadius: 5)
            ]),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              (text),
              style: const TextStyle(fontSize: 24),
            ),
          ),
        ),
      ),
    );
  }
}
