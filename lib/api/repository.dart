import 'dart:convert';

import 'package:dicky/api/model.dart';
import 'package:http/http.dart' as http;

class Repository {
  final String apiUrl = "https://reqres.in/api/users?per_page=15";

  Future<List<User>> fecthDataUsers() async {
    var result = await http.get(Uri.parse(apiUrl));
    List<dynamic> listJson = json.decode(result.body)["data"];
    return listJson.map((e) => User.fromJson(e)).toList();
  }
}
