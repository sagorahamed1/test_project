import 'package:get/get.dart';

class TwitterController extends GetxController{
  RxBool isValue = true.obs;
  RxInt notificationIndex = 0.obs;


  void toggleBoolValue(){
    isValue.value = !isValue.value;
  }

  void Increment(){
    notificationIndex.value++;
  }
}