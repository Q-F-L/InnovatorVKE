import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import '../global.dart' as global;
import 'package:http/http.dart' as http;
part 'MessageConvertJSON.g.dart';

class DiscussionList {
  List<Discussion> discussion;
  DiscussionList({required this.discussion});

  factory DiscussionList.fromJson(Map<String, dynamic> json) {
    var discussionJson = json['discussion'] as List;

    List<Discussion> discussionList =
        discussionJson.map((i) => Discussion.fromJson(i)).toList();

    return DiscussionList(
      discussion: discussionList,
    );
  }
}

class Discussion {
  final int? id;
  final int? discussion_id;
  final int? user_id;
  final String? message;
  final String? created_at;
  final String? updated_at;

  Discussion(
      { this.id,
       this.discussion_id,
       this.user_id,
       this.message,
       this.created_at,
       this.updated_at});

  factory Discussion.fromJson(Map<String, dynamic> json) {
    return Discussion(
      id: json['id'] as int,
      discussion_id: json['discussion_id'] as int,
      user_id: json['user_id'] as int,
      message: json['message'] as String,
      created_at: json['created_at'] as String,
      updated_at: json['updated_at'] as String,
    );
  }
}

Future<DiscussionList> getDiscussionList() async {
  final url = "http://didpisdp.beget.tech/api/get_discussion/1";
  final response = await http.get(Uri.parse(url));
  print(DiscussionList.fromJson(json.decode(response.body)));
  if (response.statusCode == 200) {
    return DiscussionList.fromJson(json.decode(response.body));
  } else {
    throw Exception('Error: ${response.reasonPhrase}');
  }
}
