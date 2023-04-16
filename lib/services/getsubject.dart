import 'package:http/http.dart' as http;
import 'package:unoquide/constants/constants.dart';
import 'dart:convert';

class Subject {}

Future<void> getSubject() async {
  // print('hijifjdskfd');
  // final response = await http.get(Uri.parse('$baseURL/student/'));
  // final responsedata = json.decode(response.body) as Map<String, dynamic>;
  // print(responsedata);

  var request = http.Request('GET', Uri.parse('$baseURL/participant/create'));

  http.StreamedResponse response = await request.send();

  if (response.statusCode == 200) {
    print(await response.stream.bytesToString());
  } else {
    print(response.reasonPhrase);
  }
}
