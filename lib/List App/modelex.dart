import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Datamodelexa {
  String? name;
  String? email;
  String? image;
  Datamodelexa({this.name, this.email, this.image});
  static Datamodelexa FormJson(Map<String, dynamic> json) {
    return Datamodelexa(
        name: json["firstName"], email: json["email"], image: json["image"]);
  }

  Map<String, dynamic> tojson() {
    return {"firstName": name, "email": email, "image": image};
  }
}
