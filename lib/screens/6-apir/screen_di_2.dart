import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenDi2 extends StatelessWidget {
  const ScreenDi2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Screen2")),
      backgroundColor: Colors.blue,
      body: Center(child: Text("${Get.arguments[1]}")),
    );
  }
}
