import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tintasepintura/app/widgets/custom_app_bar.dart';
import 'navigation _control_view_model.dart';

class NavigationControlView extends StatelessWidget {
  const NavigationControlView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavigationControlViewModel>(
      builder: (vm) {
        return Obx(
          () => Scaffold(
            appBar: CustomAppBar.instance(),
            bottomNavigationBar: AnimatedBottomNavigationBar(
              icons: vm.iconList,
              activeIndex: 0,
              backgroundColor: const Color.fromRGBO(0, 0, 232, 1.0),
              gapLocation: GapLocation.center,
              notchSmoothness: NotchSmoothness.defaultEdge,
              onTap: (index) => vm.setNavView(index),
              //other params
            ),
            body: vm.views[vm.bottomNavIndex.value],
          ),
        );
      },
    );
  }
}
