import 'package:flutter/material.dart';

class DataInputInteger extends StatelessWidget {
  final Function(String value) func;
  const DataInputInteger(this.func, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70.0,
      height: 35.0,
      padding: const EdgeInsets.only(top: 14.0),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(78, 78, 78, 0.2),
        borderRadius: BorderRadius.circular(6.0),
      ),
      child: TextField(
        onChanged: (value) => func(value),
        maxLines: 1,
        keyboardType: TextInputType.number,
        style: const TextStyle(
          fontSize: 18.0,
          color: Color.fromRGBO(0,0,193,1.0),
        ),
        textAlign: TextAlign.center,
        decoration: const InputDecoration(
          hintText: "0",
          border: InputBorder.none,
          hintStyle: TextStyle(
            color: Color.fromRGBO(0,0,193,1.0),
          ),
        ),
      ),
    );
  }
}
