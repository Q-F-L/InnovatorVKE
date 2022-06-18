// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'MessageConvertJSON.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DiscussionList _$DiscussionListFromJson(Map<String, dynamic> json) =>
    DiscussionList(
      discussion: (json['discussion'] as List<dynamic>)
          .map((e) => Discussion.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DiscussionListToJson(DiscussionList instance) =>
    <String, dynamic>{
      'discussion': instance.discussion,
    };

Discussion _$DiscussionFromJson(Map<String, dynamic> json) => Discussion(
      id: json['id'] as int?,
      discussion_id: json['discussion_id'] as int?,
      user_id: json['user_id'] as int?,
      user_name: json['user_name'] as String?,
      message: json['message'] as String?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
    );

Map<String, dynamic> _$DiscussionToJson(Discussion instance) =>
    <String, dynamic>{
      'id': instance.id,
      'discussion_id': instance.discussion_id,
      'user_id': instance.user_id,
      'user_name': instance.user_name,
      'message': instance.message,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
    };
