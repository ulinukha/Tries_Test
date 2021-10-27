import 'package:get/get.dart';
import 'package:tries/app/ui/modules/home/bindings/binding.dart';
import 'package:tries/app/ui/modules/home/views/view.dart';
import 'package:tries/app/ui/modules/login/bindings/binding.dart';
import 'package:tries/app/ui/modules/login/views/view.dart';

part 'app_routes.dart';

class Pages {
  Pages._();

  static const LOGIN = Routes.LOGIN;
  static const HOME = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
  ];
}
