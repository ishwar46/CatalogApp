//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.green,
        fontFamily: GoogleFonts.lato().fontFamily,
        cardColor: Vx.white,
        canvasColor: creamColor,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: darkBluishColor,
        ),
        //buttonColor: lightBluishColor,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          toolbarTextStyle: Theme.of(context).textTheme.bodyText2,
          titleTextStyle: Theme.of(context).textTheme.headline6,
        ),
      );

  static ThemeData darkTheme(BuildContext context) => ThemeData(
        //: Vx.white,
        fontFamily: GoogleFonts.lato().fontFamily,
        cardColor: Colors.black,
        canvasColor: darkCreamColor,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: Colors.white,
        ),
        //buttonColor: lightBluishColor,
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Color(0xff403b58),
          foregroundColor: Vx.white,
        ),
        appBarTheme: AppBarTheme(
          //color: Colors.black,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.white),
          foregroundColor: Vx.white,
          toolbarTextStyle: Theme.of(context).textTheme.bodyText2,
          titleTextStyle: Theme.of(context).textTheme.headline6,
        ),
      );

  //colors
  static Color creamColor = Color(0xffeeeeee);
  static Color darkCreamColor = Vx.gray900;
  static Color darkBluishColor = Color(0xff403b58);
  static Color lightBluishColor = Vx.indigo500;
}
