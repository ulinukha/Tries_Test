import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:dartx/dartx.dart';
import 'package:tries/app/base/repository/auth_repository.dart';
import 'package:tries/app/base/repository/home_repository.dart';

import '_index.dart';
export 'package:get/get.dart';

abstract class BaseController extends GetxController with CommonWidgets {
  // INJECT ALL REPO
  var repoAuth = Get.put(AuthRepositories());
  var repoProfile = Get.put(ProfileRepositories());

  // COMMON VARIABLE
  final _error = ''.obs;
  get error => _error.value;
  set error(val) => _error.value = val;

  final _isLoading = true.obs;
  get isLoading => _isLoading.value;
  set isLoading(val) => _isLoading.value = val;

  // code will run when widget completed rendering
  // use only when you need special case.
  // example : waiting some controller hash client, etc. without use FutureBuilder
  Future<void> onUIFinishRendering(Function0 callback) async {
    WidgetsBinding.instance!.addPostFrameCallback((_) => callback.call());
  }
}
