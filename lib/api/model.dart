import 'package:flutter/cupertino.dart';

//convert data from json
class User {
  final int id;
  final String email;
  final String firstName;
  final String lastName;
  final String avatar;

  const User(
      {required this.id,
      required this.email,
      required this.firstName,
      required this.lastName,
      required this.avatar});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        id: json['data']['id'],
        email: json['data']['email'],
        firstName: json['data']['first_name'],
        lastName: json['data']['last_name'],
        avatar: json['data']['avatar']);
  }
}
