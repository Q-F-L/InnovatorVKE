// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'AuthConvertJSON.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Auth _$AuthFromJson(Map<String, dynamic> json) => Auth(
      message: json['message'] as String,
      user_id: json['user_id'] as int,
      token: json['token'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$AuthToJson(Auth instance) => <String, dynamic>{
      'message': instance.message,
      'user_id': instance.user_id,
      'token': instance.token,
      'type': instance.type,
    };
