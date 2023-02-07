import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tintasepintura/app/data/models/measurement.dart';
import 'package:tintasepintura/app/ui/home/widgets/data_input_double.dart';
import 'package:tintasepintura/app/ui/home/widgets/data_input_integer.dart';

class InputWallSize extends StatefulWidget {
  Function(Measurement measurement) func;
  String wall;
  InputWallSize(this.func, this.wall, {Key? key}) : super(key: key);

  @override
  State<InputWallSize> createState() => _InputWallSizeState();
}

class _InputWallSizeState extends State<InputWallSize> {
  double wallWidth = 0.0;
  double wallHeight = 0.0;
  int doorQuantity = 0;
  int windowQuantity = 0;

  insertWidth(String value) {
    wallWidth = double.parse(value);
  }

  insertHeigh(String value) {
    wallHeight = double.parse(value);
  }

  insertWindowsQuantity(String value) {
    doorQuantity = int.parse(value);
  }

  insertDoorQuantity(String value) {
    windowQuantity = int.parse(value);
  }

  submit() {
    final obj = Measurement(
        litersOfPaint: 0,
        wall: widget.wall,
        doorQuantity: doorQuantity,
        wallHeight: wallHeight,
        wallWidth: wallWidth,
        windowQuantity: windowQuantity);

    widget.func(obj);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      margin: const EdgeInsets.only(top: 50.0),
      padding: const EdgeInsets.only(bottom: 20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: const Color.fromRGBO(255, 255, 255, 1.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.only(left: 16.0, top: 5.0, bottom: 5.0),
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromRGBO(26, 141, 255, 1.0),
                Color.fromRGBO(0, 0, 193, 1.0),
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10.0),
                topLeft: Radius.circular(10.0),
              ),
            ),
            child: Text(
              "${widget.wall}".toUpperCase(),
              style: const TextStyle(
                fontSize: 25.0,
                color: Color.fromRGBO(255, 255, 255, 1.0),
              ),
            ),
          ),
          const SizedBox(height: 15.0),
          Row(
            children: [
              SizedBox(
                width: 150.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Largura:".toUpperCase(),
                      style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(78, 78, 78, 0.8),
                      )),
                    ),
                    DataInputDouble(insertWidth),
                  ],
                ),
              ),
              SizedBox(
                width: 150.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Altura:".toUpperCase(),
                      style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(78, 78, 78, 0.8),
                      )),
                    ),
                    DataInputDouble(insertHeigh),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 20.0),
          Row(
            children: [
              SizedBox(
                width: 150.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Janelas:".toUpperCase(),
                      style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(78, 78, 78, 0.8),
                      )),
                    ),
                    DataInputInteger(insertWindowsQuantity)
                  ],
                ),
              ),
              SizedBox(
                width: 150.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Portas:".toUpperCase(),
                      style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(78, 78, 78, 0.8),
                        ),
                      ),
                    ),
                    DataInputInteger(insertDoorQuantity)
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(229,229,229, 1.0),
                ),
                child: Text(
                  "Cancelar".toUpperCase(),
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(78, 78, 78, 1.0),
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  submit();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(26, 141, 255, 1.0),
                ),
                child: Text(
                  "Cálcular".toUpperCase(),
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
