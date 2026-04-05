import 'package:flutter/material.dart';
import 'package:flutter_level_2/screens/dependacy_injection/screen_controller.dart';
import 'package:get/get.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  //this for create
  var controller = Get.put(ScreenController());
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class Screen3 extends StatefulWidget {
  const Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  //this for use not to create again
  var controller = Get.find<ScreenController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text("${controller.num1}")));
  }
}
