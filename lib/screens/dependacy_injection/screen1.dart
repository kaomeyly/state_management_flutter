import 'package:flutter/material.dart';
import 'package:flutter_level_2/screens/dependacy_injection/screen_controller.dart';
import 'package:get/get.dart';

class Screen1 extends StatelessWidget {
  final ScreenController controller;
  const Screen1({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text("${controller.num1.value}")),
            ElevatedButton(
              onPressed: () {
                controller.num1.value++;
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => Screen2(controller: controller),
                //   ),
                // );
              },
              child: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
