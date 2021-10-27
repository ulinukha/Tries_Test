import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tries/app/base/lifecycle/_index.dart';
import 'package:tries/app/base/repository/auth_repository.dart';
import 'package:tries/app/models/login_entity.dart';
import 'package:tries/app/routers/app_pages.dart';
import 'package:tries/app/ui/modules/home/controllers/controller.dart';

class LoginController extends BaseController {
  late TextEditingController usernameController = TextEditingController();
  late TextEditingController passwordController = TextEditingController();
  late LoginEntity response;

  @override
  void onInit() {
    super.onInit();
  }

  goToHome() {
    Get.toNamed(Pages.HOME);
  }

  onLogin() async {
    var username = usernameController.text;
    var password = passwordController.text;
    isLoading = true;
    var req = await repoAuth.postLogin(username, password);
    if (req.isFailure) {
      snackBarError(message: req.errorMessages, position: SnackPosition.TOP);
    } else {
      LoginEntity data = LoginEntity().fromJson(req.body);
      if (data.status == true) {
        Get.toNamed(Pages.HOME,
            arguments: HoemArguments(token: data.result!.accessToken!));
      } else {
        snackBarError(message: "Gagal Login", position: SnackPosition.TOP);
      }
    }
    isLoading = false;
  }

  @override
  void onReady() {}

  @override
  void onClose() {}
}
