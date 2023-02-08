import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tintasepintura/app/data/models/cans.dart';
import 'package:tintasepintura/core/theme/app_theme.dart';

class ShowPaintCans extends StatelessWidget {
  final Cans cans;
  const ShowPaintCans(this.cans, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20.0),
      margin: const EdgeInsets.only(left: 30.0, top: 30.0, right: 30.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        color: const Color.fromRGBO(255, 255, 255, 1.0),
        boxShadow: AppTheme.shadow(),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Text(
                "18 litros",
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(42, 83, 209, 1.0),
                  ),
                ),
              ),
              Text(
                "${cans.l18}",
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(78, 78, 78, 1.0),
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                "3,6 litros",
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(42, 83, 209, 1.0),
                  ),
                ),
              ),
              Text(
                "${cans.l36}",
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(78, 78, 78, 1.0),
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                "2,5 litros",
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(42, 83, 209, 1.0),
                  ),
                ),
              ),
              Text(
                "${cans.l25}",
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(78, 78, 78, 1.0),
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                "0,5 litros",
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(42, 83, 209, 1.0),
                  ),
                ),
              ),
              Text(
                "${cans.l05}",
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(78, 78, 78, 1.0),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
