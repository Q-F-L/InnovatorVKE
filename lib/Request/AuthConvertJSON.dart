import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'AuthConvertJSON.g.dart';

@JsonSerializable()
class Auth {
  String message;
  int user_id;
  String token;
  String type;

  Auth({required this.message,required this.user_id,required this.token, required this.type});

  factory Auth.fromJson(Map<String, dynamic> json) => _$AuthFromJson(json);

  Map<String, dynamic> toJson() => _$AuthToJson(this);
}