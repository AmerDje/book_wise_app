import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class Styles {
  static const TextStyle textStyle18 = TextStyle(
      color: Color.fromARGB(171, 255, 255, 255),
      fontWeight: FontWeight.w700,
      fontSize: 18);
  static TextStyle textStyle20 = TextStyle(
      color: const Color.fromARGB(240, 255, 255, 255),
      fontWeight: FontWeight.w700,
      fontFamily: GoogleFonts.spectral.toString(),
      fontSize: 20);
  static const TextStyle textStyle14 = TextStyle(
      color: Color.fromARGB(240, 255, 255, 255),
      fontWeight: FontWeight.w400,
      fontSize: 14);
  static const TextStyle textStyle16 = TextStyle(
      color: Color.fromARGB(240, 255, 255, 255),
      fontWeight: FontWeight.w700,
      fontSize: 16);
}
