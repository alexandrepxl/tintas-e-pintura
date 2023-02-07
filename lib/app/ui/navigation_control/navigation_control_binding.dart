import 'package:get/get.dart';
import 'package:tintasepintura/app/ui/navigation_control/navigation%20_control_view_model.dart';

class NavigationControlBinding extends Bindings{

  @override
  void dependencies() {
    Get.lazyPut(() => NavigationControlViewModel());
  }

}