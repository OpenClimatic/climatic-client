library constants;

import 'package:flutter/material.dart';

const Color primary = Color(0xff12C787);
const Color secondary = Color(0xff1D6C9D);
const Color blue = Color(0xff2C67BF);
const Color blueBG = Color(0xffCCF2FF);
const Color green = Color(0xff089A5C);
const Color greenBG = Color(0xffCDFFCC);
const Color purple = Color(0xff4D44AE);
const Color purpleBG = Color(0xffE0DEF7);
const Color brown = Color(0xffCE651A);
const Color brownBG = Color(0xffF7DFCE);
const Color yellow = Color(0xffD99E2A);
const Color yellowBG = Color(0xffFFF5A2);
const Color gray = Color(0xffCCCCCC);

/// this is a dark color!
const Color _darkText = Color(0xff00213F);

/// this this a dark color!
const Color _darkHeading = Color(0xff00162A);

/// this is a light color!
const Color _lightText = Color(0xffF0F0F0);

/// this is a light color!
const Color _lightHeading = Color(0xffF4F4F4);

// TEXT STYLE TEMPLATE
TextStyle lightHeadingTextStyle = TextStyle(
    fontFamily: "Nunito", fontWeight: FontWeight.w700, color: _darkHeading);

TextStyle lightBodyTextStyle = TextStyle(
    fontFamily: "Poppins", fontWeight: FontWeight.w400, color: _darkText);

TextStyle darkHeadingTextStyle = TextStyle(
    fontFamily: "Nunito", fontWeight: FontWeight.w700, color: _lightHeading);

TextStyle darkBodyTextStyle = TextStyle(
    fontFamily: "Poppins", fontWeight: FontWeight.w400, color: _lightText);

// Shadows
BoxShadow boxshadow = new BoxShadow(
  color: Color(0x22000000),
  offset: Offset(0.0, 2.25),
  spreadRadius: 1,
  blurRadius: 3,
);

BoxShadow boxshadowSmall = new BoxShadow(
  color: Color(0x22000000),
  offset: Offset(0.0, 1.0),
  spreadRadius: 0,
  blurRadius: 1,
);

// LIGHT THEME
final lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: _lightScheme.primary,
  canvasColor: _lightScheme.background,
  scaffoldBackgroundColor: _lightScheme.background,
  bottomAppBarColor: _lightScheme.surface,
  floatingActionButtonTheme: _lightFABTD,
  appBarTheme: _lightAppBarTheme,
  colorScheme: _lightScheme,
  textTheme: _lightTextTheme,
);

FloatingActionButtonThemeData _lightFABTD = FloatingActionButtonThemeData(
    backgroundColor: _lightScheme.primary, elevation: 2);

AppBarTheme _lightAppBarTheme = AppBarTheme(
  actionsIconTheme: IconThemeData(color: _lightScheme.onBackground),
  brightness: Brightness.light,
  color: _lightScheme.background,
  elevation: 9999,
  iconTheme: IconThemeData(color: _lightScheme.onBackground),
  textTheme: _lightTextTheme,
);

ColorScheme _lightScheme = ColorScheme(
  primary: primary,
  primaryVariant: Color(0xffCDFFCC),
  secondary: secondary,
  secondaryVariant: Color(0xffCCF2FF),
  surface: Colors.white,
  background: Color(0xffEDF1F5),
  error: Color(0xffEB5757),
  onPrimary: Colors.white,
  onSecondary: Colors.white,
  onSurface: _darkText,
  onBackground: _darkText,
  onError: Colors.black,
  brightness: Brightness.light,
);

TextTheme _lightTextTheme = TextTheme(
  headline1: lightHeadingTextStyle.copyWith(fontSize: 48),
  headline2: lightHeadingTextStyle.copyWith(fontSize: 28),
  headline3:
      lightHeadingTextStyle.copyWith(fontSize: 24, fontWeight: FontWeight.w600),
  headline4:
      lightHeadingTextStyle.copyWith(fontSize: 20, fontWeight: FontWeight.w600),
  subtitle1: lightBodyTextStyle.copyWith(fontSize: 18),
  bodyText1: lightBodyTextStyle.copyWith(fontSize: 16),
  bodyText2:
      lightBodyTextStyle.copyWith(fontSize: 14, fontWeight: FontWeight.w500),
  caption:
      lightBodyTextStyle.copyWith(fontSize: 11, fontWeight: FontWeight.w300),
  overline:
      lightBodyTextStyle.copyWith(fontSize: 12, fontWeight: FontWeight.w300),
  button: lightBodyTextStyle.copyWith(
      fontSize: 18, color: _lightText, fontWeight: FontWeight.w600),
);

// DARK THEME
final darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: _darkScheme.primary,
  canvasColor: _darkScheme.background,
  scaffoldBackgroundColor: _darkScheme.background,
  appBarTheme: _darkAppBarTheme,
  bottomAppBarColor: _darkScheme.surface,
  floatingActionButtonTheme: _darkFABTD,
  colorScheme: _darkScheme,
  textTheme: _darkTextTheme,
);

FloatingActionButtonThemeData _darkFABTD = FloatingActionButtonThemeData(
    backgroundColor: _darkScheme.primary, elevation: 2);

AppBarTheme _darkAppBarTheme = AppBarTheme(
  actionsIconTheme: IconThemeData(color: _darkScheme.onBackground),
  brightness: Brightness.dark,
  color: _darkScheme.background,
  elevation: 9999,
  iconTheme: IconThemeData(color: _darkScheme.onBackground),
  textTheme: _darkTextTheme,
);

ColorScheme _darkScheme = ColorScheme(
  primary: Color(0xff12C787),
  primaryVariant: Color(0xffCDFFCC),
  secondary: Color(0xff1D6C9D),
  secondaryVariant: Color(0xffCCF2FF),
  surface: Color(0xff404040),
  background: Color(0xff2e2e2e),
  error: Color(0xffEB5757),
  onPrimary: Colors.white,
  onSecondary: Colors.white,
  onSurface: Colors.white,
  onBackground: Colors.white,
  onError: Colors.black,
  brightness: Brightness.dark,
);

TextTheme _darkTextTheme = TextTheme(
  headline1: darkHeadingTextStyle.copyWith(fontSize: 48),
  headline2: darkHeadingTextStyle.copyWith(fontSize: 28),
  headline3:
      darkHeadingTextStyle.copyWith(fontSize: 24, fontWeight: FontWeight.w600),
  headline4:
      darkHeadingTextStyle.copyWith(fontSize: 20, fontWeight: FontWeight.w600),
  subtitle1: darkBodyTextStyle.copyWith(fontSize: 18),
  bodyText1: darkBodyTextStyle.copyWith(fontSize: 16),
  bodyText2: darkBodyTextStyle.copyWith(fontSize: 14),
  caption:
      darkBodyTextStyle.copyWith(fontSize: 11, fontWeight: FontWeight.w300),
  overline:
      darkBodyTextStyle.copyWith(fontSize: 12, fontWeight: FontWeight.w300),
  button: darkBodyTextStyle.copyWith(
      fontSize: 18, color: _lightText, fontWeight: FontWeight.w600),
);
