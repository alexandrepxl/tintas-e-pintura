import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tintasepintura/app/ui/history/history_view.dart';
import 'package:tintasepintura/app/ui/home/home_view.dart';

class NavigationControlViewModel extends GetxController{

  final List<Widget> views = [
    const HomeView(),
    const HistoryView()
  ];

  final iconList = <IconData>[
    Icons.home,
    Icons.list,
  ];

  RxInt bottomNavIndex = 0.obs;


  setNavView(int index){
    bottomNavIndex.value = index;
  }


  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

}