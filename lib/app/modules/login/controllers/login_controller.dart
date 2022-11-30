import 'package:ecommerce_demo_flutter/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  onTapLogin() {
    Get.toNamed(Routes.HOME);
  }
}
