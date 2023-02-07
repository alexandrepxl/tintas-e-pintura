import 'package:get/get.dart';
import 'package:tintasepintura/app/ui/initial/initial_view_model.dart';

class InitialBinding extends Bindings{

  @override
  void dependencies() {
    Get.lazyPut(() => InitialViewModel());
  }

}