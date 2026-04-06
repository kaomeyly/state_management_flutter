import 'package:flutter/material.dart';
import 'package:flutter_level_2/screens/6-apir/screen_di_2.dart';
import 'package:flutter_level_2/screens/6-apir/screen_di_controller.dart';
import 'package:get/get.dart';

class ScreenDi1 extends StatelessWidget {
  const ScreenDi1({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => ScreenDiController());
    // var controller = Get.find<ScreenDiController>();
    return Scaffold(
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     controller.a++;
      //   },
      //   backgroundColor: Colors.deepOrangeAccent,
      // ),
      // body: Center(child: Obx(() => Text("${controller.a.value}"))),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.to(ScreenDi2());
              },
              child: Text("Go To next Screen"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.bottomSheet(
                  isDismissible: false,
                  enableDrag: false, //use for close btn
                  Container(
                    height: Get.height / 2,
                    width: Get.width,
                    color: Colors.brown.shade200,
                  ),
                );
              },
              child: Text("Open Btn sheet"),
            ),
          ],
        ),
      ),
    );
  }
}
