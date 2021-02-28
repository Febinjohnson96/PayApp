import 'dart:async';
import 'dart:convert';

class User {
  User({
    this.id,
    this.name,
    this.age,
    this.userName,
    this.password,
  });

  String id;
  String name;
  String age;
  String userName;
  String password;

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      age: json['age'],
      userName: json['userName'],
      password: json['password'],
    );
  }
}
