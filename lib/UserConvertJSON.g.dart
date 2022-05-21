// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'UserConvertJSON.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      name: json['name'] as String,
      estimation: json['estimation'] as int,
      comments: json['comments'] as int,
      offers: json['offers'] as int,
      approved: json['approved'] as int,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'name': instance.name,
      'estimation': instance.estimation,
      'comments': instance.comments,
      'offers': instance.offers,
      'approved': instance.approved,
    };
