import 'package:flutter/material.dart';

class CollectionTheme {
  ///Get collection theme
  static ThemeData getCollectionTheme(
      {String theme = "primaryLight", String font = "Raleway"}) {
    return ThemeData(
      // primarySwatch: const MaterialColor(0xff515179, <int, Color>{
      //   50: Color(0xfff2f6ff),
      //   100: Color(0xfff2f6ff),
      //   200: Color(0xfff2f6ff),
      //   300: Color(0xfff2f6ff),
      //   400: Color(0xfff2f6ff),
      //   500: Color(0xff515179),
      //   600: Color(0xff515179),
      //   700: Color(0xff33334F),
      //   800: Color(0xff33334F),
      //   900: Color(0xff242424),
      // }),
      // accentColor: const MaterialColor(
      //   0xfffe5723,
      //   <int, Color>{
      //     100: Color(0xfffe5723),
      //     200: Color(0xfffe5723),
      //     300: Color(0xfffe5723),
      //     400: Color(0xfffe5723),
      //     500: Color(0xfffe5723),
      //     600: Color(0xfffe5723),
      //     700: Color(0xfffe5723),
      //     800: Color(0xfffe5723),
      //     900: Color(0xfffe5723),
      //   },
      // ),

      // backgroundColor: Colors.blueGrey.shade100,
      scaffoldBackgroundColor: Colors.white,

      fontFamily: font,
      brightness: Brightness.light,
      dividerColor: Colors.grey.shade300,
      splashColor: Colors.white70,
      // canvasColor: const Color(0xff33334F),

      // buttons theme
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(70, 50),
          padding: const EdgeInsets.symmetric(horizontal: 16),
          onPrimary: const Color(0xfff7f9fc),
          primary: Colors.black,
          shadowColor: const Color(0xffebf1ff),
          onSurface: Colors.black,
          // shape: const RoundedRectangleBorder(
          //   borderRadius: BorderRadius.all(
          //     Radius.circular(8.0),
          //   ),
          // ),
          textStyle: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              wordSpacing: 2,
              letterSpacing: 2),
        ),
      ),

      inputDecorationTheme: InputDecorationTheme(
        labelStyle: const TextStyle(color: Colors.blueGrey),
        errorStyle: const TextStyle(fontSize: 10.0, color: Color(0xfffe5723)),
        fillColor: Colors.white,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 12.0, horizontal: 15),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: const BorderSide(
            color: Color(0xff515179),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: const BorderSide(
            width: 3,
            color: Color(0xff515179),
          ),
        ),
      ),
    );
  }

  ///Singleton i_factory
  static final CollectionTheme _instance = CollectionTheme._internal();

  factory CollectionTheme() {
    return _instance;
  }

  CollectionTheme._internal();
}
