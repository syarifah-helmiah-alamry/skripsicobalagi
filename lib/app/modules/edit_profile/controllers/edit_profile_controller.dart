import 'package:get/get.dart';

class EditProfileController extends GetxController {
  final List<Map<String, dynamic>> options = [
    {'id': '1', 'label': 'Yes'},
    {'id': '2', 'label': 'No'},
  ];
  final selectedOption = ''.obs;

  void selectOption(String optionId) {
    selectedOption.value = optionId;
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
