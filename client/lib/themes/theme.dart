import 'package:dynamic_custom_theme/dynamic_custom_theme.dart';
import 'package:flutter/material.dart';

/// This will your new custom dynamic theme
/// *** [TO IMPLEMENT THIS YOU CAN CALL custom.streamColors, to listen to your Colors]
/// *** [You can also set your Dynamic Theme]
/// You can also check in main.dart for how to use this.
CustomTheme<DynamicTheme> customTheme = CustomTheme();

/// This [snapshot] will receive your all
/// custom theme, to access your themes
/// use [snapshot.data.value].
AsyncSnapshot<DynamicTheme> snapshot;

/// This will be your class for creating dynamic Themes.
/// You can also add your custom Color,Brightness,Size, etc.
/// by adding in parameters.
/// [If you will add some parameters here, make sure you also add in INITIAL, LIGHT and DARK Mode]
/// so you will not get an error.
class DynamicTheme {
  final Brightness brightness;
  final Color primaryColor;
  final Color bottomAppBarColor;
  final ColorScheme colorScheme;
  final TextTheme textTheme;
  DynamicTheme({
    this.brightness,
    this.primaryColor,
    this.bottomAppBarColor,
    this.colorScheme,
    this.textTheme,
  });
}

/// Uses the customTheme class to select either the dark or light dynamictheme
void setThemeAcordingToPlatformBrightness(Brightness platformBrightness) {
  if (platformBrightness == Brightness.dark) {
    customTheme.setThemes(darkDynamicTheme);
  } else {
    customTheme.setThemes(lightDynamicTheme);
  }
}

/// cc contains all the colors used trought the app
/// there is a bg version for raw colors like green and blue
CustomColors cc = CustomColors();

class CustomColors {
  final Color primary = Color(0xff12C787);
  final Color secondary = Color(0xff1D6C9D);
  final Color blue = Color(0xff2C67BF);
  final Color blueBG = Color(0xffCCF2FF);
  final Color green = Color(0xff089A5C);
  final Color greenBG = Color(0xffCDFFCC);
  final Color purple = Color(0xff4D44AE);
  final Color purpleBG = Color(0xffE0DEF7);
  final Color brown = Color(0xffCE651A);
  final Color brownBG = Color(0xffF7DFCE);
  final Color yellow = Color(0xffD99E2A);
  final Color yellowBG = Color(0xffFFF5A2);
  final Color gray = Color(0xffCCCCCC);
  final Color darkText = Color(0xff00213F);
  final Color darkHeading = Color(0xff00162A);
  final Color lightText = Color(0xffF0F0F0);
  final Color lightHeading = Color(0xffF4F4F4);
}

// TEXT STYLE TEMPLATE
TextStyle lightHeadingTextStyle = TextStyle(
    fontFamily: "Nunito", fontWeight: FontWeight.w700, color: cc.darkHeading);

TextStyle lightBodyTextStyle = TextStyle(
    fontFamily: "Poppins", fontWeight: FontWeight.w400, color: cc.darkText);

TextStyle darkHeadingTextStyle = TextStyle(
    fontFamily: "Nunito", fontWeight: FontWeight.w700, color: cc.lightHeading);

TextStyle darkBodyTextStyle = TextStyle(
    fontFamily: "Poppins", fontWeight: FontWeight.w400, color: cc.lightText);


// Shadows
BoxShadow boxshadow = new BoxShadow(
  color: Color(0x22000000),
  offset: Offset(2.0, 2.0),
  spreadRadius: 0,
  blurRadius: 5,
);

// LIGHT THEME
DynamicTheme lightDynamicTheme = new DynamicTheme(
  brightness: Brightness.light,
  primaryColor: _lightScheme.primary,
  bottomAppBarColor: _lightScheme.surface,
  colorScheme: _lightScheme,
  textTheme: _lightTextTheme,
);

ColorScheme _lightScheme = new ColorScheme(
  primary: cc.primary,
  primaryVariant: Color(0xffCDFFCC),
  secondary: cc.secondary,
  secondaryVariant: Color(0xffCCF2FF),
  surface: Colors.white,
  background: Color(0xffEDF1F5),
  error: Color(0xffEB5757),
  onPrimary: Colors.white,
  onSecondary: Colors.white,
  onSurface: cc.darkText,
  onBackground: cc.darkText,
  onError: Colors.black,
  brightness: Brightness.dark,
);

TextTheme _lightTextTheme = new TextTheme(
  headline1: lightHeadingTextStyle.copyWith(fontSize: 48),
  headline2: lightHeadingTextStyle.copyWith(fontSize: 28),
  headline3: lightHeadingTextStyle.copyWith(fontSize: 24, fontWeight: FontWeight.w600),
  headline4: lightHeadingTextStyle.copyWith(fontSize: 20, fontWeight: FontWeight.w600),
  subtitle1: lightBodyTextStyle.copyWith(fontSize: 18),
  bodyText1: lightBodyTextStyle.copyWith(fontSize: 16),
  bodyText2: lightBodyTextStyle.copyWith(fontSize: 14),
  caption: lightBodyTextStyle.copyWith(fontSize: 11, fontWeight: FontWeight.w300),
  overline: lightBodyTextStyle.copyWith(fontSize: 12, fontWeight: FontWeight.w300),
  button: lightBodyTextStyle.copyWith(fontSize: 18, color: cc.lightText, fontWeight: FontWeight.w600),
);


// DARK THEME
DynamicTheme darkDynamicTheme = new DynamicTheme(
  brightness: Brightness.dark,
  primaryColor: _darkScheme.primary,
  bottomAppBarColor: _darkScheme.surface,
  colorScheme: _darkScheme,
  textTheme: _darkTextTheme,
);

ColorScheme _darkScheme = new ColorScheme(
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

TextTheme _darkTextTheme = new TextTheme(
  headline1: darkHeadingTextStyle.copyWith(fontSize: 48),
  headline2: darkHeadingTextStyle.copyWith(fontSize: 28),
  headline3: darkHeadingTextStyle.copyWith(fontSize: 24, fontWeight: FontWeight.w600),
  headline4: darkHeadingTextStyle.copyWith(fontSize: 20, fontWeight: FontWeight.w600),
  subtitle1: darkBodyTextStyle.copyWith(fontSize: 18),
  bodyText1: darkBodyTextStyle.copyWith(fontSize: 16),
  bodyText2: darkBodyTextStyle.copyWith(fontSize: 14),
  caption: darkBodyTextStyle.copyWith(fontSize: 11, fontWeight: FontWeight.w300),
  overline: darkBodyTextStyle.copyWith(fontSize: 12, fontWeight: FontWeight.w300),
  button: darkBodyTextStyle.copyWith(fontSize: 18, color: cc.lightText, fontWeight: FontWeight.w600),
);


