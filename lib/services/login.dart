import 'dart:convert';

import 'package:unoquide/constants/constants.dart';
import 'package:unoquide/models/login.dart';
import 'package:http/http.dart' as http;

Future<StudentLogin> student_login(String email, String password) async {
  String url = "$baseURL/student/login";
  var response = await http.post(Uri.parse(url),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({"admNo": email, "password": password}));
  if (response.statusCode == 200) {
    print("Fetched Data successfully");
    return StudentLogin.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to create post');
  }
}

Future<StudentLogin> teacher_login(String email, String password) async {
  String url = "$baseURL/teacher/login";
  var response = await http.post(Uri.parse(url),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({"email": email, "password": password}));
  if (response.statusCode == 200) {
    print("Fetched Data successfully");
    return StudentLogin.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to create post');
  }
}

Future<StudentLogin> parent_login(String email, String password) async {
  String url = "$baseURL/parent/login";
  var response = await http.post(Uri.parse(url),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({"email": email, "password": password}));
  if (response.statusCode == 200) {
    print("Fetched Data successfully");
    return StudentLogin.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to create post');
  }
}
