import 'package:get/get.dart';
import '../../base/networking/_index.dart';

class ProfileRepositories {
  var _service = Get.put(HttpService());

  Future<Outcome> getProfile(token) async {
    return await _service.httpGet(
        endPoint: 'https://dev.tries.co.id/api/profile',
        query: {'token': token});
  }
}
