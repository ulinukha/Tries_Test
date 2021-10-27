import 'package:get/get.dart';
import 'package:tries/app/base/lifecycle/_index.dart';
import 'package:tries/app/models/profile_entity.dart';

class HoemArguments {
  final String token;
  HoemArguments({required this.token});

  @override
  String toString() {
    return 'token:$token';
  }
}

class HomeController extends BaseController {
  final data = <ProfileEntity>[].obs;

  @override
  void onInit() {
    super.onInit();
    onLoad();
  }

  onLoad() async {
    var args = Get.arguments as HoemArguments;
    isLoading = true;
    var req = await repoProfile.getProfile(args.token);
    isLoading = false;
    if (req.isFailure) {
      snackBarError(message: req.errorMessages, position: SnackPosition.TOP);
    } else {
      ProfileEntity dataResponse = ProfileEntity().fromJson(req.body);
      data.add(dataResponse);
    }
    isLoading = false;
  }

  @override
  void onReady() {}

  @override
  void onClose() {}
}
