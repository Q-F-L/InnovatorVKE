import 'dart:convert';

import 'package:http/http.dart' as http;

class ProjectsList {
  List<Project> projects;
  ProjectsList({required this.projects});

  factory ProjectsList.fromJson (Map<String, dynamic> json) {

    var projectsJson = json['project'] as List;

    List<Project> projectsList = projectsJson.map((i) => Project.fromJson(i)).toList();

    return ProjectsList(
      projects: projectsList,
    );
  }
}

class Project {
  final int id;
  final String topic;
  final String title;
  final String now_description;
  final String now_video;
  final String now_photo;
  final String need_description;
  final String need_video;
  final String need_photo;
  final String will_description;
  final String rating;
  final String status;
  final int discussion_id;
  final int user_id;
  final String created_at;
  final String updated_at;

  Project(
      {required this.id,
        required this.topic,
        required this.title,
        required this.now_description,
        required this.now_video,
        required this.now_photo,
        required this.need_description,
        required this.need_video,
        required this.need_photo,
        required this.will_description,
        required this.rating,
        required this.status,
        required this.discussion_id,
        required this.user_id,
        required this.created_at,
        required this.updated_at});

  factory Project.fromJson(Map<String, dynamic> json) {
    return Project(
        id: json['id'] as int,
        topic: json['topic'] as String,
        title: json['title'] as String,
        now_description: json['now_description'] as String,
        now_video: json['now_video'] as String,
        now_photo: json['now_photo'] as String,
        need_description: json['need_description'] as String,
        need_video: json['need_video'] as String,
        need_photo: json['need_photo'] as String,
        will_description: json['will_description'] as String,
        rating: json['rating'] as String,
        status: json['status'] as String,
        discussion_id: json['discussion_id'] as int,
        user_id: json['user_id'] as int,
        created_at: json['created_at'] as String,
        updated_at: json['updated_at'] as String,
      );
    }
  }

Future<ProjectsList> getProjectList() async {
  const url = 'http://didpisdp.beget.tech/api/all_project';
  final response = await http.get(Uri.parse(url));

  if(response.statusCode == 200) {
    return ProjectsList.fromJson(json.decode(response.body));
  } else {
    throw Exception('Error: ${response.reasonPhrase}');
  }
}