import 'package:http/http.dart' as http;
import 'package:unoquide/constants/constants.dart';
import 'dart:convert';

import '../models/getsubjects.dart';

Future<Subject> getSubject() async {
  var request = http.Request(
      'GET', Uri.parse('https://backend.uno-guide.com//student/notifications'));

  http.StreamedResponse response = await request.send();

  {
    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
    } else {
      print(response.reasonPhrase);
    }
  }
  return Subject(method: '', rawUrl: '');
}
