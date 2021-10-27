import 'package:tries/generated/json/base/json_convert_content.dart';
import 'package:tries/generated/json/base/json_field.dart';

class ProfileEntity with JsonConvert<ProfileEntity> {
	bool? status;
	String? message;
	ProfileResult? result;
}

class ProfileResult with JsonConvert<ProfileResult> {
	String? name;
	String? email;
	String? address;
	@JSONField(name: "is_verified")
	bool? isVerified;
	String? photo;
	dynamic? dob;
	int? age;
	List<ProfileResultEducations>? educations;
	List<ProfileResultPortfolios>? portfolios;
}

class ProfileResultEducations with JsonConvert<ProfileResultEducations> {
	String? level;
	String? institution;
}

class ProfileResultPortfolios with JsonConvert<ProfileResultPortfolios> {
	String? title;
	List<String>? images;
	String? desc;
}
