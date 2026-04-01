import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class HomeController extends GetxController {
  //reactive variables
  RxInt a = 0.obs;
  int b = 0;

  var count =  0.obs;

}