import 'package:get/get.dart';
import 'package:tintasepintura/app/ui/home/home_repository.dart';
import 'package:tintasepintura/app/ui/home/home_view_model.dart';

class HomeBinding extends Bindings{

  @override
  void dependencies() {
    Get.lazyPut(() => HomeViewModel());
    Get.lazyPut(() => HomeRepository());
  }

}