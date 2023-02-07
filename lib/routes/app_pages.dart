import 'package:get/get.dart';
import 'package:tintasepintura/app/ui/home/home_binding.dart';
import 'package:tintasepintura/app/ui/home/home_view.dart';
import 'package:tintasepintura/app/ui/initial/initial_binding.dart';
import 'package:tintasepintura/app/ui/initial/initial_view.dart';
import 'package:tintasepintura/app/ui/navigation_control/navigation_control_binding.dart';
import 'package:tintasepintura/app/ui/navigation_control/navigation_control_view.dart';
import 'package:tintasepintura/routes/app_routes.dart';

class AppPages {
  static final List<GetPage> pages = [

    GetPage(
        name: AppRoutes.initial,
        transition: Transition.cupertino ,
        page: () => const InitialView(),
        binding: InitialBinding()),

    GetPage(
        name: AppRoutes.navigationControl,
        transition: Transition.cupertino ,
        page: () => const NavigationControlView(),
        binding: NavigationControlBinding()),

    GetPage(
        name: AppRoutes.home,
        transition: Transition.cupertino ,
        page: () => const HomeView(),
        binding: HomeBinding()),

  ];
}