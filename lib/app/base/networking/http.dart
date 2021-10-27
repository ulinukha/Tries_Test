import 'dart:convert';
import 'package:get/get.dart';
import 'interceptor.dart';
import 'outcome.dart';

enum Method { GET, POST, PUT, DELETE }

class HttpService {
  var _api = new _Api();

  Future<Outcome> httpGet({
    String endPoint = "",
    Map<String, dynamic>? query,
    bool withToken = true,
  }) async {
    return await _api.httpGet(endPoint: endPoint, query: query);
  }

  Future<Outcome> httpPost({
    String endPoint = "",
    dynamic body,
    bool withToken = true,
  }) async {
    return await _api.httpPost(
        endPoint: endPoint, body: body, withToken: withToken);
  }
}

// —————————————————————————————————————————————————————————————————————————————
/// PRIVATE CLASS
/// configure http here !!
// —————————————————————————————————————————————————————————————————————————————
class _Api extends GetConnect {
  @override
  void onInit() {
    super.onInit();
  }

  Future<Outcome> httpGet(
      {required String endPoint,
      Map<String, dynamic>? query,
      var token = ""}) async {
    var _result = Outcome();

    print("GET     : $endPoint");
    try {
      if (query != null) print("QUERY   : ${jsonEncode(query)}");
    } catch (e) {
      if (query != null) print("QUERY   : $query");
    }
    print("this token ${query!['token']}");

    try {
      var res =
          await get(endPoint, headers: {'Authorization': "${query['token']}"});
      print("RESPONSE CODE : ${res.statusCode}");

      if (res.isOk) {
        // print("${res.bodyString}");
        _result.body = res.body;
        _result.isFailure = false;
        return _result;
      } else {
        return errorInterceptorHandling(res, _result);
      }
    } catch (e) {
      return errorInterceptorHandling(e, _result);
    }
  }

  Future<Outcome> httpPost({
    String endPoint = "",
    dynamic body,
    bool withToken = true,
  }) async {
    var _result = Outcome();

    print("POST    : ${httpClient.baseUrl}$endPoint");
    try {
      if (body != null) print("PAYLOAD : ${jsonEncode(body)}");
    } catch (e) {
      if (body != null) print("PAYLOAD : $body");
    }

    try {
      print(" this body ${body}");
      var res = await httpClient.post(endPoint,
          contentType: 'application/x-www-form-urlencoded', body: body);
      print("RESPONSE CODE : ${res.statusCode}");

      if (res.isOk) {
        print("${res.bodyString}");
        _result.body = res.body;
        _result.isFailure = false;
        return _result;
      } else {
        return errorInterceptorHandling(res, _result);
      }
    } catch (e) {
      return errorInterceptorHandling(e, _result);
    }
  }
}
