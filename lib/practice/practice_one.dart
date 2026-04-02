import 'package:flutter/material.dart';
import 'package:flutter_level_2/practice/practice_controller_one.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class PracticeOne extends StatefulWidget {
  const PracticeOne({super.key});

  @override
  State<PracticeOne> createState() => _PracticeOneState();
}

class _PracticeOneState extends State<PracticeOne> {
  var controller = PracticeControllerOne();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: _buildbox()),
          Expanded(child: _buildbtn()),
        ],
      ),
    );
  }

  Widget _buildbox() {
    return Obx(() {
      var color = controller.selectedColor.value == "red"
          ? Colors.red
          : controller.selectedColor.value == "green"
          ? Colors.green
          : Colors.blue;
      return Center(child: Container(width: 150, height: 150, color: color));
    });
  }

  Widget _buildbtn() {
    return Column(
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          spacing: 10,
          children: [
            GestureDetector(
              onTap: () {
                controller.selectedColor.value = "red";
              },
              child: Container(width: 40, height: 40, color: Colors.red),
            ),
            GestureDetector(
              onTap: () {
                controller.selectedColor.value = "green";
              },
              child: Container(width: 40, height: 40, color: Colors.green),
            ),
            GestureDetector(
              onTap: () {
                controller.selectedColor.value = "blue";
              },
              child: Container(width: 40, height: 40, color: Colors.blue),
            ),
          ],
        ),
      ],
    );
  }
}
