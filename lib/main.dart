import 'package:flutter/material.dart';
import 'package:flutter_level_2/screens/dependacy_injection/screen1.dart';
import 'package:flutter_level_2/screens/dependacy_injection/screen2.dart';
import 'package:flutter_level_2/screens/dependacy_injection/screen_controller.dart';

void main() {
  runApp(const MainApp());
}

var screenController = ScreenController();

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/screen1',
      routes: {
        '/screen1': (context) => Screen1(controller: screenController),
        '/screen2': (context) => Screen2(controller: screenController),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
