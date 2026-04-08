import 'package:flutter_level_2/ecomm_practice/detail/ecom_detail_controller.dart';
import 'package:get/get.dart';

class EcomDetailBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EcomDetailController());
  }
}
