import 'dart:convert';
import 'dart:async';
import '../model/user.dart';
import 'package:http/http.dart' as http;

//test code
Future<User> fetchUser() async {
  String url = 'http://localhost:8080/payapp/user.php';
  final response = await http.get(url);
  if (response.statusCode == 200) {
    return User.fromJson(jsonDecode(response.body));
  } else {
    throw Exception("Failed to post");
  }
}
