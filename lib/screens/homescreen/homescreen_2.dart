import 'package:flutter/material.dart';
import 'package:flutter_level_2/screens/homescreen/home_controller.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class Homescreen2 extends StatefulWidget {
  const Homescreen2({super.key});

  @override
  State<Homescreen2> createState() => _Homescreen2State();
}

class _Homescreen2State extends State<Homescreen2> {
  var controller = HomeController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                "Count : ${controller.count.value}",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
            SizedBox(
              width: 80,
              height: 40,
              child: ElevatedButton(
                onPressed: () {
                  controller.count.value++;
                  // controller.count.value = controller.count.value +1;
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
  }
}
