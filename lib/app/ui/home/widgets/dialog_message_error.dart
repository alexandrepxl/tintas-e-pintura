import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tintasepintura/core/values/constants.dart';

class DialogMessageError extends StatelessWidget {
  final List<String> errors;
  const DialogMessageError(this.errors, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color.fromRGBO(0, 0, 0, 0.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            margin: const EdgeInsets.only(left: 30.0, right: 30.0),
            decoration: BoxDecoration(
              color: const Color.fromRGBO(255, 255, 255, 1.0),
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Column(
              children: [
                Container(
                  height: 45.0,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16.0),
                      topRight: Radius.circular(16.0),
                    ),
                    color: Color.fromRGBO(221,105,106,1.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: InkWell(
                            onTap: (){
                              Get.back();
                            },
                            child: Image.asset(AppImages.iconCancel, width: 32.0)),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      for(int i = 0; i < errors.length; i++ )
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Row(
                          children: [
                            Text("${i+1} -",style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(
                                fontSize: 18.0,
                                color: Color.fromRGBO(78,78,78,1.0),
                                fontWeight: FontWeight.w700
                              )
                            ),),
                            const SizedBox(width: 10.0),
                            Flexible(
                              child: Text(
                                errors[i],
                                style: GoogleFonts.montserrat(
                                  textStyle: const TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(78, 78, 78, 1.0),
                                  ),
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )


                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
