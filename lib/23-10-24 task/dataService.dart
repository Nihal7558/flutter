import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:homepage/23-10-24%20task/model.dart';

class Dataservice {
  var url = "https://fakestoreapi.com/products";

  Future<List<DataModel>?> getmethod() async {
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var body = await json.decode(response.body);
      print(body);
      return List<DataModel>.from(body.map((e) => DataModel.fromJson(e)));
    } else {
      return null;
    }
  }
}
