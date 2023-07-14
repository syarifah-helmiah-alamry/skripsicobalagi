import 'package:get/get.dart';

import '../controllers/listen_controller.dart';

class ListenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ListenController>(
      () => ListenController(),
    );
  }
}
