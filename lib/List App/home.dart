import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homepage/List%20App/dataController.dart';

class HomeDemo extends StatelessWidget {
  HomeDemo({super.key});

  final controller = Get.put(datacontrollerexam());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 44, 77, 223),
        title: Row(
          children: [
            Icon(Icons.stacked_bar_chart),
            SizedBox(width: 10),
            Text(
              "Userlist.io",
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
        actions: [
          Icon(Icons.search),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.menu)
        ],
      ),
      body: Container(
        alignment: Alignment.center,
        child: Obx(() {
          return controller.loadline.isTrue
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : ListView.builder(
                  itemCount: controller.DataList.length,
                  itemBuilder: (c, i) {
                    final Data = controller.DataList[i];
                    return Card(
                        child: ListTile(
                            subtitle: Text(Data.email.toString()),
                            title: Text(Data.name.toString()),
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  controller.DataList[i].image.toString()),
                              backgroundColor:
                                  const Color.fromARGB(255, 235, 174, 174),
                            )));
                  });
        }),
      ),
    );
  }
}
