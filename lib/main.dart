import 'package:flutter/material.dart';
import 'package:flutter_level_2/ecomm_practice/detail/ecom_detail.dart';
import 'package:flutter_level_2/ecomm_practice/home/ecom_homescreen.dart';
import 'package:flutter_level_2/screens/6-apir/screen_di_controller.dart';
import 'package:get/get.dart';

void main() {
  // Get.put(ScreenDiController());
  Get.lazyPut(() => ScreenDiController());

  runApp(const MainApp());
}

// var screendiController = ScreenDiController();

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: "/home",
      getPages: [
        GetPage(name: "/home", page: () => EcomHomescreen()),
        GetPage(
          name: "/detail",
          page: () => EcomDetail(),
          transition: Transition.cupertino,
          transitionDuration: Duration(milliseconds: 600),
        ),
      ],
      debugShowCheckedModeBanner: false,
    );
  }
}

// initialRoute: '/screen1',
// routes: {
//   '/screen1': (context) => ScreenDi1(controller: screendiController),
//   '/screen2': (context) => ScreenDi2(controller: screendiController),
// },
