import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class NotesAppTheme {
  static TextTheme lightTextTheme = TextTheme(
    headline1: GoogleFonts.roboto(),
  );

  static ThemeData lightTheme() {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: Colors.transparent,
      ),
    );
    return ThemeData(
      textTheme: lightTextTheme,
    );
  }
}
