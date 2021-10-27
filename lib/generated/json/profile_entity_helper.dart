import 'package:tries/app/models/profile_entity.dart';

profileEntityFromJson(ProfileEntity data, Map<String, dynamic> json) {
	if (json['status'] != null) {
		data.status = json['status'];
	}
	if (json['message'] != null) {
		data.message = json['message'].toString();
	}
	if (json['result'] != null) {
		data.result = ProfileResult().fromJson(json['result']);
	}
	return data;
}

Map<String, dynamic> profileEntityToJson(ProfileEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['status'] = entity.status;
	data['message'] = entity.message;
	data['result'] = entity.result?.toJson();
	return data;
}

profileResultFromJson(ProfileResult data, Map<String, dynamic> json) {
	if (json['name'] != null) {
		data.name = json['name'].toString();
	}
	if (json['email'] != null) {
		data.email = json['email'].toString();
	}
	if (json['address'] != null) {
		data.address = json['address'].toString();
	}
	if (json['is_verified'] != null) {
		data.isVerified = json['is_verified'];
	}
	if (json['photo'] != null) {
		data.photo = json['photo'].toString();
	}
	if (json['dob'] != null) {
		data.dob = json['dob'];
	}
	if (json['age'] != null) {
		data.age = json['age'] is String
				? int.tryParse(json['age'])
				: json['age'].toInt();
	}
	if (json['educations'] != null) {
		data.educations = (json['educations'] as List).map((v) => ProfileResultEducations().fromJson(v)).toList();
	}
	if (json['portfolios'] != null) {
		data.portfolios = (json['portfolios'] as List).map((v) => ProfileResultPortfolios().fromJson(v)).toList();
	}
	return data;
}

Map<String, dynamic> profileResultToJson(ProfileResult entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['name'] = entity.name;
	data['email'] = entity.email;
	data['address'] = entity.address;
	data['is_verified'] = entity.isVerified;
	data['photo'] = entity.photo;
	data['dob'] = entity.dob;
	data['age'] = entity.age;
	data['educations'] =  entity.educations?.map((v) => v.toJson())?.toList();
	data['portfolios'] =  entity.portfolios?.map((v) => v.toJson())?.toList();
	return data;
}

profileResultEducationsFromJson(ProfileResultEducations data, Map<String, dynamic> json) {
	if (json['level'] != null) {
		data.level = json['level'].toString();
	}
	if (json['institution'] != null) {
		data.institution = json['institution'].toString();
	}
	return data;
}

Map<String, dynamic> profileResultEducationsToJson(ProfileResultEducations entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['level'] = entity.level;
	data['institution'] = entity.institution;
	return data;
}

profileResultPortfoliosFromJson(ProfileResultPortfolios data, Map<String, dynamic> json) {
	if (json['title'] != null) {
		data.title = json['title'].toString();
	}
	if (json['images'] != null) {
		data.images = (json['images'] as List).map((v) => v.toString()).toList().cast<String>();
	}
	if (json['desc'] != null) {
		data.desc = json['desc'].toString();
	}
	return data;
}

Map<String, dynamic> profileResultPortfoliosToJson(ProfileResultPortfolios entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['title'] = entity.title;
	data['images'] = entity.images;
	data['desc'] = entity.desc;
	return data;
}