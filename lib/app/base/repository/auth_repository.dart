import 'package:get/get.dart';
import '../../base/networking/_index.dart';

class AuthRepositories {
  var _service = Get.put(HttpService());

  Future<Outcome> postLogin(String email, String password) async {
    var loginBody = {'username': email, 'password': password};

    return await _service.httpPost(
      endPoint: 'https://dev.tries.co.id/api/login',
      withToken: false,
      body: loginBody,
    );
  }
}
