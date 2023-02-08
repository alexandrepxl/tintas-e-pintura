import 'package:flutter/material.dart';

class AppTheme {
  static List<BoxShadow> shadow() {
    return [
      const BoxShadow(
        color: Color.fromRGBO(50, 132, 229, 0.10),
        spreadRadius: 4,
        blurRadius: 7,
        offset: Offset(0,5),
      ),
    ];
  }
}




