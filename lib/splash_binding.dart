import 'package:elibrary_ui/app/modules/home/controllers/home_controller.dart';
import 'package:elibrary_ui/app/modules/shelf/controllers/shelf_controller.dart';
import 'package:get/get.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController(), fenix: true);
    Get.lazyPut<ShelfController>(() => ShelfController(), fenix: true);
  }
}
