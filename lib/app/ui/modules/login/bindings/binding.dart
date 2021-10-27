import 'package:get/get.dart';
import 'package:tries/app/ui/modules/login/controllers/controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(
      () => LoginController(),
    );
  }
}
