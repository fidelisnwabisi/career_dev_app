import 'package:flutter/material.dart';

import 'main_screen.dart'; // Import your main screen

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Career Dev App',
      theme: ThemeData(
        primarySwatch: Colors.blue, // Set your app's primary color
      ),
      home: MainScreen(), // Set your main screen as the initial screen
    );
  }
}
