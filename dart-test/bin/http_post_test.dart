import 'dart:convert';
import 'package:http/http.dart';

const urlPrefix = 'https://jsonplaceholder.typicode.com';

Future<void> makePostRequest() async {
  final url = Uri.parse('$urlPrefix/posts');

  final headers = {'Content-type': 'application/json'};

  final jsonData = '{"title": "Hello", "body": "This is body"}';

  final response = await post(url, headers: headers, body: jsonData);

  print("Body: ${response.body}");
}

void main() {
  makePostRequest();
}
