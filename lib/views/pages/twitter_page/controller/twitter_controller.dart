import 'package:get/get.dart';

class TwitterController extends GetxController{
  RxBool isValue = true.obs;
  RxInt notificationIndex = 0.obs;


  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    toggleBoolValue();
    Increment();
  }

  void toggleBoolValue(){
    isValue.value = !isValue.value;
  }

  void Increment(){
    notificationIndex.value++;
  }


}