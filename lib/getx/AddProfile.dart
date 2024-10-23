import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homepage/getx/getfrom.dart';

class UserMngGet extends StatelessWidget {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _ageController = TextEditingController();
  UserMngGet({super.key});

  final userGet = Get.put(GetModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 6, 165, 238),
        title: Row(
          children: [
            CircleAvatar(
              child: Icon(Icons.person),
              backgroundColor: Colors.yellow,
              radius: 15,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "User Management",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.grey[800],
      body: Obx(() {
        return ListView.separated(
            itemBuilder: (context, index) {
              return ListTile(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                title: Text(
                  userGet.userList[index].name,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    InkWell(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return Dialog(
                                backgroundColor: Colors.grey[600],
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                child: SizedBox(
                                  child: Padding(
                                    padding: const EdgeInsets.all(0.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 8.0),
                                          child: Text(
                                            "Update User",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: TextField(
                                            controller: _nameController,
                                            decoration: InputDecoration(
                                                hintText: "Enter Name",
                                                hintStyle: TextStyle(
                                                    color: Colors.white60)),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: TextField(
                                            controller: _ageController,
                                            decoration: InputDecoration(
                                                hintText: "Enter Age",
                                                labelStyle: TextStyle(
                                                    color: Colors.white),
                                                hintStyle: TextStyle(
                                                    color: Colors.white60)),
                                          ),
                                        ),
                                        TextButton(
                                            onPressed: () {
                                              Get.back();

                                              userGet.updateUser(
                                                  userGet.userList[index].id,
                                                  int.parse(
                                                      _ageController.text),
                                                  _nameController.text);
                                            },
                                            child: Text(
                                              "Update",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.white60),
                                            ))
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        child: Icon(
                          Icons.edit,
                          color: Colors.white,
                        )),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                        onTap: () {
                          userGet.deleteUser(userGet.userList[index].id);
                        },
                        child: Icon(
                          Icons.delete_outline,
                          color: Colors.white,
                        ))
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) {
              return Divider(
                color: Colors.blueGrey[600],
                thickness: 1,
              );
            },
            itemCount: userGet.userList.length);
      }),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        backgroundColor: Colors.blueGrey[600],
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return Dialog(
                backgroundColor: Colors.blueGrey[600],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            "Add User",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            controller: _nameController,
                            decoration: InputDecoration(
                                hintText: "Enter Name",
                                labelStyle: TextStyle(color: Colors.white),
                                hintStyle: TextStyle(color: Colors.white60)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            controller: _ageController,
                            decoration: InputDecoration(
                                hintText: "Enter Age",
                                labelStyle: TextStyle(color: Colors.white),
                                hintStyle: TextStyle(color: Colors.white60)),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextButton(
                            onPressed: () {
                              Get.back();
                              userGet.addUser(UserModel(
                                  name: _nameController.text,
                                  age: int.parse(_ageController.text),
                                  id: DateTime.now().toString()));
                              print(DateTime.now());
                            },
                            child: Text(
                              "Submit",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white60),
                            ))
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 30,
        ),
      ),
    );
  }
}
