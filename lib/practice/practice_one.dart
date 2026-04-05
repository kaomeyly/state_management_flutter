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
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Expanded(child: _buildbox()),
            Expanded(child: _buildbtn()),
          ],
        ),
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
      return Center(
        child: Container(
          width: double.parse(controller.selectedSize.value),
          height: double.parse(controller.selectedSize.value),
          color: color,
        ),
      );
    });
  }

  Widget _buildbtn() {
    return Column(
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Obx(
          () => Text(
            "Color : ${controller.selectedColor.value}",
            style: TextStyle(fontSize: 20),
          ),
        ),
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
        Obx(
          () => Text(
            "Size : ${controller.selectedSize.value}",
            style: TextStyle(fontSize: 20),
          ),
        ),
        Row(
          spacing: 10,
          children: [
            OutlinedButton(
              onPressed: () {
                controller.selectedSize.value = "200";
              },
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                side: BorderSide(color: Colors.brown, width: 2),
              ),
              child: Text(
                "200",
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
            OutlinedButton(
              onPressed: () {
                controller.selectedSize.value = "150";
              },
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                side: BorderSide(color: Colors.brown, width: 2),
              ),
              child: Text(
                "150",
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
            OutlinedButton(
              onPressed: () {
                controller.selectedSize.value = "100";
              },
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                side: BorderSide(color: Colors.brown, width: 2),
              ),
              child: Text(
                "100",
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
