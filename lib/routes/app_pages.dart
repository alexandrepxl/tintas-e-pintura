import 'package:get/get.dart';
import 'package:tintasepintura/app/ui/home/home_binding.dart';
import 'package:tintasepintura/app/ui/home/home_view.dart';
import 'package:tintasepintura/routes/app_routes.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
        name: AppRoutes.home,
        transition: Transition.cupertino ,
        page: () => const HomeView(),
        binding: HomeBinding()),

  ];
}