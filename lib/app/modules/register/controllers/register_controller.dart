import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  var isPasswordVisible = false.obs;
  var isPasswordVisible2 = false.obs;
  TextEditingController emailc = TextEditingController();
  TextEditingController id = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController ttl = TextEditingController();
  TextEditingController pwc = TextEditingController();
  TextEditingController pwc2 = TextEditingController();
  final RxBool rememberMe = false.obs;
  void togglePasswordVisibility() {
    isPasswordVisible.toggle();
  }

  void togglePasswordVisibility2() {
    isPasswordVisible2.toggle();
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

}
