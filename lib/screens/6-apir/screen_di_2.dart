import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenDi2 extends StatefulWidget {
  const ScreenDi2({super.key});

  @override
  State<ScreenDi2> createState() => _ScreenDi2State();
}

class _ScreenDi2State extends State<ScreenDi2> {
  var arg = Get.arguments;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Screen2")),
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(arg[0]),
            ElevatedButton(
              onPressed: () {
                Get.back(result: "Hello from screen 2");
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text("Back to screen 1"),
            ),
          ],
        ),
      ),
    );
  }
}
