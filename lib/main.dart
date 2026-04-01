import 'package:flutter/material.dart';
import 'package:flutter_level_2/screens/homescreen/homescreen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return const MaterialApp(home: Homescreen());
  }
}
