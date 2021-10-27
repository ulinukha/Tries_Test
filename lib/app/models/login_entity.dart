import 'package:tries/generated/json/base/json_convert_content.dart';
import 'package:tries/generated/json/base/json_field.dart';

class LoginEntity with JsonConvert<LoginEntity> {
	bool? status;
	String? message;
	LoginResult? result;
}

class LoginResult with JsonConvert<LoginResult> {
	@JSONField(name: "access_token")
	String? accessToken;
}
