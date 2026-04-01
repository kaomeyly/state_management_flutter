import 'package:flutter/material.dart';
import 'package:flutter_level_2/screens/homescreen/home_controller.dart';
import 'package:get/get.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});
  @override
  Widget build(BuildContext context) {
    return GetX(
      init: HomeController(),
      builder: (controller) {
        return Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Count : ${controller.count.value}",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                SizedBox(
                  width: 80,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {
                      controller.count.value++;
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepOrange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Icon(Icons.add, color: Colors.white, size: 25),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
