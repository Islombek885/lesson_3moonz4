// import 'package:lesson_2moonz3/home.dart';
import 'package:flutter/material.dart';
import 'package:lesson_2moonz3/home.dart';
// import 'package:lesson_2moonz3/myAppState.dart';
// import 'package:lesson_2moonz3/page1.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Home());
  }
}