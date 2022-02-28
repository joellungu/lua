import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Widgets {
  String? text;

  static Text textAppBar(String text) {
    return Text(
      text,
      style: GoogleFonts.lato(),
    );
  }
}
