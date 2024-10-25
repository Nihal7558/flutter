import 'package:get/get.dart';
import 'package:homepage/23-10-24%20task/dataService.dart';
import 'package:homepage/23-10-24%20task/model.dart';

class Datacontroller extends GetxController {
  var DataList = <DataModel>[].obs;

  var loadind = true.obs;

  getData() async {
    loadind.value = true;
    var datas = await Dataservice().getmethod();
    try {
      if (datas != null) {
        DataList.value = datas;
        loadind.value = false;
      }
    } catch (e) {
      Get.snackbar("title", "$e");
      loadind.value = false;
    }
  }

  @override
  onInit() {
    // TODO: implement ==
    getData();
    super.onInit();
  }
}
