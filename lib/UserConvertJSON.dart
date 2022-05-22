import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:json_annotation/json_annotation.dart';

part 'UserConvertJSON.g.dart';

@JsonSerializable()
class User {
  final String name;
  final int estimation;
  final int comments;
  final int offers;
  final int approved;

  User(
      {required this.name,
      required this.estimation,
      required this.comments,
      required this.offers,
      required this.approved});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}

Future<User> getUser(int user_id) async {
  final url = 'http://didpisdp.beget.tech/api/search/101';
  final response = await http.get(
    Uri.parse(url),
    headers: {
      'Accept': 'application/json',
      'Authorization':
          'Bearer j914OfilLzpzRRHbcp4wzF7u9sPuvxu4JZBMShVBSC14CFfbmHY1M4d6pKET'
    },
  );
  
  if (response.statusCode == 200) {
    return User.fromJson(json.decode(response.body));
  } else {
    throw Exception('Error: ${response.reasonPhrase}');
  }
}
