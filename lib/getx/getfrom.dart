import 'package:get/get.dart';

class GetModel extends GetxController {
  RxList<UserModel> userList = <UserModel>[].obs;

  void deleteUser(String id) {
    userList.removeWhere((i) => i.id == id);
  }

  void addUser(UserModel user) {
    userList.add(user);
  }

  void updateUser(String id, int newage, String newName) {
    final findId = userList.indexWhere((i) => i.id == id);
    userList[findId] = UserModel(name: newName, age: newage, id: id);
  }
}

class UserModel {
  String name;
  int age;
  String id;

  UserModel({required this.name, required this.age, required this.id});
}
