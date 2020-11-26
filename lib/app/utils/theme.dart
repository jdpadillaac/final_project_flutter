import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:products_app/app/utils/colors.dart';

ThemeData lightTheme() {
  return ThemeData(
    appBarTheme: AppBarTheme(
      color: Colors.white,
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(
        color: appPrimaryColor,
      ),
      textTheme: GoogleFonts.poppinsTextTheme().copyWith(
        headline6: TextStyle(
          fontSize: 20,
          color: appPrimaryColor,
        ),
      ),
    ),
    // accentColor: Colors.white,
    scaffoldBackgroundColor: Colors.white,
    textTheme: GoogleFonts.poppinsTextTheme()
        .apply(
          bodyColor: appPrimaryColor,
        )
        .copyWith(
          bodyText1: TextStyle(color: appPrimaryColor),
          bodyText2: TextStyle(color: appPrimaryColor),
        ),
    iconTheme: IconThemeData(color: appSecondColor),
    buttonTheme: ButtonThemeData(
      minWidth: double.infinity,
      buttonColor: appPrimaryColor,
      textTheme: ButtonTextTheme.accent,
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  );
}
