import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget textme(BuildContext context, String text, FontWeight weight, double size,
    Color color, TextAlign align) {
  return Text(text,
      style: GoogleFonts.poppins(
        fontWeight: weight,
        fontSize: size,
        color: color,
      ),
      textAlign: align);
}
