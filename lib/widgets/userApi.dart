import 'dart:convert';

import '../models/user.dart';
import 'package:http/http.dart' as http;

//test code

// Future<List<User>> fetchuser() async {
//   String url = "http://localhost/payapp/user.php";
//   final response = await http.get(url);
//   return userFromJson(response.body);
// }

// Code from doc
Future<List<User>> fetchUser() async {
  String url = "http://localhost/payapp/user.php";
  final response = await http.get(url);
  if (response.statusCode == 200) {
    return userFromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load the data');
  }
}
