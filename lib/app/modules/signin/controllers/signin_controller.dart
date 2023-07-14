import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SigninController extends GetxController {
  var isPasswordVisible = false.obs;
  var isPasswordVisible2 = false.obs;
  TextEditingController emailc = TextEditingController();
  TextEditingController id = TextEditingController();
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

  final count = 0.obs;
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
  void increment() => count.value++;
}
