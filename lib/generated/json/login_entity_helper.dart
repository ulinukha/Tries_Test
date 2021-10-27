import 'package:tries/app/models/login_entity.dart';

loginEntityFromJson(LoginEntity data, Map<String, dynamic> json) {
	if (json['status'] != null) {
		data.status = json['status'];
	}
	if (json['message'] != null) {
		data.message = json['message'].toString();
	}
	if (json['result'] != null) {
		data.result = LoginResult().fromJson(json['result']);
	}
	return data;
}

Map<String, dynamic> loginEntityToJson(LoginEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['status'] = entity.status;
	data['message'] = entity.message;
	data['result'] = entity.result?.toJson();
	return data;
}

loginResultFromJson(LoginResult data, Map<String, dynamic> json) {
	if (json['access_token'] != null) {
		data.accessToken = json['access_token'].toString();
	}
	return data;
}

Map<String, dynamic> loginResultToJson(LoginResult entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['access_token'] = entity.accessToken;
	return data;
}