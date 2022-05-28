import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import '../global.dart' as global;
import 'package:http/http.dart' as http;
part 'MessageConvertJSON.g.dart';

@JsonSerializable()
class DiscussionList {
	List<DiscussionList> discussion;
	DiscussionList({required this.discussion});

	factory DiscussionList.fromJson(Map<String, dynamic> json) => _$DiscussionListFromJson(json);
}

@JsonSerializable()
class Discussion {
	int? id;
	int? discussion_id;
	int? user_id;
	String? message;
	String? created_at;
	String? updated_at;

	Discussion({ this.id, this.discussion_id, this.user_id, this.message, this.created_at, this.updated_at});

  factory Discussion.fromJson(Map<String, dynamic> json) => _$DiscussionFromJson(json);

  Map<String, dynamic> toJson() => _$DiscussionToJson(this);
}

Future<DiscussionList> getDiscussionList() async {
  final url = "http://didpisdp.beget.tech/api/get_discussion/1";
  final response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    return DiscussionList.fromJson(json.decode(response.body));
  } else {
    throw Exception('Error: ${response.reasonPhrase}');
  }
}