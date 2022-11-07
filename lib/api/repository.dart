import 'dart:convert';

import 'package:dicky/api/model.dart';
import 'package:http/http.dart' as http;

class Repository {
  final baseUrl = 'https://reqres.in/api/users?page=2';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(baseUrl));

      if (response.statusCode == 200) {
        Iterable it = jsonDecode(response.body);
        List<User> user = it.map((e) => User.fromJson(e)).toList();
        return user;
      } else {
        print(response.statusCode);
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
