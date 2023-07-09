import 'dart:convert';
import 'package:http/http.dart';

class User {
  int id;
  String name;

  User({required this.id, required this.name});
  User.fromJson(Map<String, dynamic> json)
      : this(id: json['id'], name: json['title']);

  @override
  String toString() {
    return "ID : $id \n";
  }

  Map<String, dynamic> toJson() => {'id': id, 'name': name};
}

const urlPrefix = 'https://jsonplaceholder.typicode.com';

Future<List<dynamic>?> makeGetRequest() async {
  final url = Uri.parse('$urlPrefix/posts');

  try {
    Response response = await get(url);
    if (response.statusCode == 200) {
      var parsedJson = await jsonDecode(response.body);
      var userList =
          await parsedJson.map((data) => User.fromJson(data)).toList();
      return userList;
    }
  } catch (err) {
    print(err);
  }
  return null;
}

void main() {
  late Future<List<dynamic>?> users;
  users = makeGetRequest();
  users.then((v) => print(v));
}
