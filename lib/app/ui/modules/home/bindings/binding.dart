import 'package:get/get.dart';
import 'package:tries/app/ui/modules/home/controllers/controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
  }
}
