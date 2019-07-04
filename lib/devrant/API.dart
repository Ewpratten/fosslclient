import 'dart:convert';

import 'package:http/http.dart' as http;

class API {
  String base = "https://devrant.com/api";
  int app = 3;

  Future<dynamic> getFeed(int skip) async {
    var response = await http.get(
        base + "/devrant/rants?app="+ app.toString() +"&sort=algo&limit=50&skip=" + skip.toString());
    return json.decode(response.body);
  }
}
