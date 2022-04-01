import 'package:flutter/material.dart';

Widget normalText(String text, {Color? color}) {
  return Text(
    text,
    style: TextStyle(color: color ?? Colors.white, fontFamily: 'Poppins'),
  );
}
