import 'package:flutter/material.dart';
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
              onPressed: () async {
                var result = await Get.toNamed(
                  "/screen2",
                  arguments: ["Hello", "jelly"],
                );
                debugPrint("result : $result");
              },
              child: Text("Go To next Screen"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.bottomSheet(
                  isDismissible: true,
                  enableDrag: true, //use for close btn
                  Container(
                    height: Get.height / 2,
                    width: Get.width,
                    color: Colors.brown.shade200,
                  ),
                );
              },
              child: Text("Open Btn sheet"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.dialog(
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(height: 80, color: Colors.pinkAccent),
                    ),
                  ),
                );
              },
              child: Text("Open Dialog"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.snackbar(
                  "title",
                  "message",
                  backgroundColor: Colors.deepOrange.shade300,
                  duration: Duration(seconds: 6),
                );
              },
              child: Text("Open Snackbar"),
            ),
          ],
        ),
      ),
    );
  }
}
