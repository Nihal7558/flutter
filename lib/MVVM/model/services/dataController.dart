import 'package:get/get.dart';
import 'package:homepage/23-10-24%20task/model.dart';
import 'package:homepage/MVVM/model/services/apiService.dart';
import 'package:homepage/MVVM/view_model/modelex.dart';

class datacontrollerexam extends GetxController {
  var DataList = <Datamodelexa>[].obs;
  var loadline = true.obs;

  @override
  void onInit() {
    getdata();
    super.onInit();
  }

  getdata() async {
    loadline.value = true;
    var data = await Apiservice().getmethod();
    try {
      if (data != null) {
        DataList.value = data;
        loadline.value = false;
      }
    } catch (e) {
      Get.snackbar("title", "$e");
      loadline.value = false;
    }
  }
}
