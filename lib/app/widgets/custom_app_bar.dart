import 'package:flutter/material.dart';
import 'package:tintasepintura/core/values/constants.dart';

class CustomAppBar {
  static AppBar instance() {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(AppImages.logoAppbar, width: 210.0),
        ],
      ),
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          color: Color.fromRGBO(0, 0, 193, 1.0),
        ),
      ),
    );
  }
}
