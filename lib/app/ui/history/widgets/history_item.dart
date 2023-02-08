import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tintasepintura/app/data/models/hive_history.dart';
import 'package:tintasepintura/core/theme/app_theme.dart';

class HistoryItem extends StatelessWidget {
  final HiveHistory data;
  const HistoryItem(this.data, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 90.0,
      margin: const EdgeInsets.only(left: 16.0, top: 8.0, bottom: 8.0, right: 16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        color: Colors.white,
        boxShadow: AppTheme.shadow(),
      ),
      child: Row(
        children: [
          Container(
            width: 20.0,
            height: 90.0,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(81,156,196, 1.0),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16.0),
                bottomLeft: Radius.circular(16.0),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text(
                      "Área total:",
                      style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(78, 78, 78, 1.0),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10.0),
                    Text(
                      "${data.totalArea.toStringAsFixed(2)}m²",
                      style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(78, 78, 78, 1.0),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5.0),
                Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          "L 18",
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                              fontSize: 13.0,
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(78, 78, 78, 1.0),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10.0),
                        Text(
                          "${data.l18}",
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w700,
                              color: Color.fromRGBO(78, 78, 78, 1.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 20.0),
                    Column(
                      children: [
                        Text(
                          "L 3,6",
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                              fontSize: 13.0,
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(78, 78, 78, 1.0),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10.0),
                        Text(
                          "${data.l36}",
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w700,
                              color: Color.fromRGBO(78, 78, 78, 1.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 20.0),
                    Column(
                      children: [
                        Text(
                          "L 2,5",
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                              fontSize: 13.0,
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(78, 78, 78, 1.0),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10.0),
                        Text(
                          "${data.l25}",
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w700,
                              color: Color.fromRGBO(78, 78, 78, 1.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 20.0),
                    Column(
                      children: [
                        Text(
                          "L 0,5",
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                              fontSize: 13.0,
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(78, 78, 78, 1.0),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10.0),
                        Text(
                          "${data.l05}",
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(78, 78, 78, 1.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
