import 'dart:convert';

import 'package:homepage/MVVM/model/services/dataController.dart';
import 'package:homepage/MVVM/view_model/modelex.dart';
import 'package:http/http.dart' as http;

class Apiservice {
  var url = "https://dummyjson.com/users";
  Future<List<Datamodelexa>?> getmethod() async {
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var body = await json.decode(response.body);
      List<dynamic> user = body["users"];
      print(body);
      List<Datamodelexa> users = [];
      for (var item in user) {
        users.add(Datamodelexa.FormJson(item));
      }
      return users;
    } else {
      return null;
    }
  }
}
