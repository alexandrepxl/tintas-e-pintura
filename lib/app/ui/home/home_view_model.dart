import 'package:get/get.dart';

class HomeViewModel extends GetxController{


  RxString  wallActive = "".obs;
  selectingWall(String wall){
    wallActive.value = wall;
  }

  cancel(){
    wallActive.value = "";
  }


  insertHeigh(dynamic value){
    print(value);
  }

  insertWidth(dynamic value){
    print(value);
  }


  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

}