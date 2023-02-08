import 'package:flutter/material.dart';
import 'package:tintasepintura/core/theme/app_theme.dart';

class HistoryItem extends StatelessWidget {
  const HistoryItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 85.0,
      margin: const EdgeInsets.only(left: 16.0,top: 10.0, right: 16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        color: Colors.white,
        boxShadow: AppTheme.shadow()
      ),
      child: Row(
        children: [
          Container(
            width: 20.0,
            height: 85.0,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(158,186,0,1.0),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(16.0), bottomLeft: Radius.circular(16.0))
            ),
          ), 
          Column(
            children: [
              Text("Área total:")
            ],
          )
        ],
      ),
    );
  }
}
