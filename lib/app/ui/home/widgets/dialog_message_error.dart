import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tintasepintura/core/values/constants.dart';

class DialogMessageError extends StatelessWidget {
  const DialogMessageError({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color.fromRGBO(0,0,0,1.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              color: const Color.fromRGBO(255,255,255,1.0), 
              borderRadius: BorderRadius.circular(16.0)
            ),
            child: Column(
              children: [
                Container(
                  height: 70.0,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(16.0), topRight: Radius.circular(16.0)), 
                    color: Color.fromRGBO(186,221,255,1.0)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset(AppImages.iconCancel, width: 40.0)
                    ],
                  ),
                ),

                Text("MENSAGEM DE EROR!", style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(78,78,78,1.0)
                  )
                ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
