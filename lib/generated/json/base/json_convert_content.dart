// ignore_for_file: non_constant_identifier_names
// ignore_for_file: camel_case_types
// ignore_for_file: prefer_single_quotes

// This file is automatically generated. DO NOT EDIT, all your changes would be lost.
import 'package:tries/app/models/profile_entity.dart';
import 'package:tries/generated/json/profile_entity_helper.dart';
import 'package:tries/app/models/login_entity.dart';
import 'package:tries/generated/json/login_entity_helper.dart';
import 'package:tries/app/models/logout_entity.dart';
import 'package:tries/generated/json/logout_entity_helper.dart';

class JsonConvert<T> {
	T fromJson(Map<String, dynamic> json) {
		return _getFromJson<T>(runtimeType, this, json);
	}

  Map<String, dynamic> toJson() {
		return _getToJson<T>(runtimeType, this);
  }

  static _getFromJson<T>(Type type, data, json) {
		switch (type) {
			case ProfileEntity:
				return profileEntityFromJson(data as ProfileEntity, json) as T;
			case ProfileResult:
				return profileResultFromJson(data as ProfileResult, json) as T;
			case ProfileResultEducations:
				return profileResultEducationsFromJson(data as ProfileResultEducations, json) as T;
			case ProfileResultPortfolios:
				return profileResultPortfoliosFromJson(data as ProfileResultPortfolios, json) as T;
			case LoginEntity:
				return loginEntityFromJson(data as LoginEntity, json) as T;
			case LoginResult:
				return loginResultFromJson(data as LoginResult, json) as T;
			case LogoutEntity:
				return logoutEntityFromJson(data as LogoutEntity, json) as T;    }
		return data as T;
	}

  static _getToJson<T>(Type type, data) {
		switch (type) {
			case ProfileEntity:
				return profileEntityToJson(data as ProfileEntity);
			case ProfileResult:
				return profileResultToJson(data as ProfileResult);
			case ProfileResultEducations:
				return profileResultEducationsToJson(data as ProfileResultEducations);
			case ProfileResultPortfolios:
				return profileResultPortfoliosToJson(data as ProfileResultPortfolios);
			case LoginEntity:
				return loginEntityToJson(data as LoginEntity);
			case LoginResult:
				return loginResultToJson(data as LoginResult);
			case LogoutEntity:
				return logoutEntityToJson(data as LogoutEntity);
			}
			return data as T;
		}
  //Go back to a single instance by type
	static _fromJsonSingle<M>( json) {
		String type = M.toString();
		if(type == (ProfileEntity).toString()){
			return ProfileEntity().fromJson(json);
		}
		if(type == (ProfileResult).toString()){
			return ProfileResult().fromJson(json);
		}
		if(type == (ProfileResultEducations).toString()){
			return ProfileResultEducations().fromJson(json);
		}
		if(type == (ProfileResultPortfolios).toString()){
			return ProfileResultPortfolios().fromJson(json);
		}
		if(type == (LoginEntity).toString()){
			return LoginEntity().fromJson(json);
		}
		if(type == (LoginResult).toString()){
			return LoginResult().fromJson(json);
		}
		if(type == (LogoutEntity).toString()){
			return LogoutEntity().fromJson(json);
		}

		return null;
	}

  //list is returned by type
	static M _getListChildType<M>(List data) {
		if(<ProfileEntity>[] is M){
			return data.map<ProfileEntity>((e) => ProfileEntity().fromJson(e)).toList() as M;
		}
		if(<ProfileResult>[] is M){
			return data.map<ProfileResult>((e) => ProfileResult().fromJson(e)).toList() as M;
		}
		if(<ProfileResultEducations>[] is M){
			return data.map<ProfileResultEducations>((e) => ProfileResultEducations().fromJson(e)).toList() as M;
		}
		if(<ProfileResultPortfolios>[] is M){
			return data.map<ProfileResultPortfolios>((e) => ProfileResultPortfolios().fromJson(e)).toList() as M;
		}
		if(<LoginEntity>[] is M){
			return data.map<LoginEntity>((e) => LoginEntity().fromJson(e)).toList() as M;
		}
		if(<LoginResult>[] is M){
			return data.map<LoginResult>((e) => LoginResult().fromJson(e)).toList() as M;
		}
		if(<LogoutEntity>[] is M){
			return data.map<LogoutEntity>((e) => LogoutEntity().fromJson(e)).toList() as M;
		}

		throw Exception("not found");
	}

  static M fromJsonAsT<M>(json) {
		if (json is List) {
			return _getListChildType<M>(json);
		} else {
			return _fromJsonSingle<M>(json) as M;
		}
	}
}