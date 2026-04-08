import 'package:flutter_level_2/ecomm_practice/detail/ecom_detail_binding.dart';
import 'package:get/get.dart';

class EcomBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EcomDetailBinding());
  }
}