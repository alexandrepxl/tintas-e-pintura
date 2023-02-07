import 'package:get/get.dart';
import 'package:tintasepintura/routes/app_routes.dart';

class InitialViewModel extends GetxController{


  goHome(){
    Get.offNamed(AppRoutes.navigationControl);
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