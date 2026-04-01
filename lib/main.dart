import 'package:flutter/material.dart';
import 'package:flutter_level_2/practice/practice_one.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: PracticeOne());
  }
}
