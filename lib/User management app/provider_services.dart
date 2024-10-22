import 'package:flutter/material.dart';

class ProviderServices extends ChangeNotifier {
  List<User> _user = [];

  List<User> get user => _user;

  void createUser(User user) {
    _user.add(user);
    notifyListeners();
  }

  void updateUser(String id, String newName, String newAge) {
    for (var user in _user) {
      if (user.id == id) {
        user.name = newName;
        user.age = newAge;
        notifyListeners();
        // break;
      }
    }
  }

  void deleteUser(String id) {
    for (var user in _user) {
      if (user.id == id) {
        _user.remove;
        notifyListeners();
        // break;
      }
    }
    _user.removeWhere(((i) => i.id == id));
    notifyListeners();
  }
}

class User {
  String name;
  String id;
  String age;

  User({required this.name, required this.id, required this.age});
}
