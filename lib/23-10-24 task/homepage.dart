import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homepage/23-10-24%20task/datacontroller.dart';

class Homepageexa extends StatelessWidget {
  Homepageexa({super.key});
  final controller = Get.put(Datacontroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("api getx"),
      ),
      body: Container(
          alignment: Alignment.center,
          child: Obx(() {
            return controller.loadind.isTrue
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : ListView.builder(
                    itemCount: controller.DataList.length ?? 0,
                    itemBuilder: (c, i) {
                      final data = controller.DataList[i];
                      return Card(
                          child: ListTile(
                              subtitle: Text(data.model!.rate.toString()),
                              leading: CircleAvatar(
                                backgroundImage:
                                    NetworkImage(data.image.toString()),
                              ),
                              title: Text(data.title.toString() ?? "")));
                    });
          })),
    );
  }
}
