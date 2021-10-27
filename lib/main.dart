import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'app/base/networking/_index.dart';
import 'app/base/repository/auth_repository.dart';
import 'app/routers/app_pages.dart';
import 'app/ui/widgets/my_behavior.dart';

void main() {
  runApp(
    GetMaterialApp(
      scrollBehavior: MyBehavior(),
      debugShowCheckedModeBanner: false,
      title: "Tries",
      initialRoute: Pages.LOGIN,
      getPages: Pages.routes,
    ),
  );
}

// Future<void> _injectDependency() async {
//   // Services di inject saat dibutuhkan saja .
//   Get.lazyPut<HttpService>(() => HttpService());

//   // Repo
//   Get.put<AuthRepositories>(AuthRepositories(), permanent: true);
// }
