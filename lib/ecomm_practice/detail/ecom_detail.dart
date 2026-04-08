import 'package:flutter/material.dart';
import 'package:flutter_level_2/ecomm_practice/detail/ecom_detail_controller.dart';
import 'package:get/get.dart';

class EcomDetail extends GetView<EcomDetailController> {
  const EcomDetail({super.key});

  // var contoller = EcomDetailController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Page"),
        actions: [
          Obx(
            () => Badge.count(
              count: controller.count.value,
              child: Icon(Icons.shopping_cart),
            ),
          ),
          SizedBox(width: 20),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            SizedBox(height: 20),
            Container(
              color: Colors.grey.shade300,
              width: double.infinity,
              child: SizedBox(
                height: 300,
                child: Image.network(Get.arguments["image"]),
              ),
            ),
            SizedBox(height: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(Get.arguments["title"], maxLines: 1),
                SizedBox(height: 10),
                Text("Price :${Get.arguments["price"]}\$"),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      controller.count.value++;
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple.shade300,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    child: Text("Add To Cart"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
