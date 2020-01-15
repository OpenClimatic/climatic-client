import 'package:dynamic_custom_theme/dynamic_custom_theme.dart';
import 'package:flutter/material.dart';

/// This will your new custom dynamic theme
/// *** [TO IMPLEMENT THIS YOU CAN CALL custom.streamColors, to listen to your Colors]
/// *** [You can also set your Dynamic Theme]
/// You can also check in main.dart for how to use this.
CustomTheme<DynamicTheme> customTheme = CustomTheme();

/// This [snapshot] will receive your all
/// custom theme, to access your themes
/// user [snapshot.data.value].
AsyncSnapshot<DynamicTheme> snapshot;

/// Uses the customTheme class to select either the dark or light dynamictheme
void setThemeAcordingToPlatformBrightness(Brightness platformBrightness) {
  if (platformBrightness == Brightness.dark) {
    customTheme.setThemes(darkDynamicTheme);
  } else {
    customTheme.setThemes(lightDynamicTheme);
  }
}

/// This will be your class for creating dynamic Themes.
/// You can also add your custom Color,Brightness,Size, etc.
/// by adding in parameters.
/// [If you will add some parameters here, make sure you also add in INITIAL, LIGHT and DARK Mode]
/// so you will not get an error.
class DynamicTheme {
  final Brightness brightness;
  final MaterialColor primarySwatch;
  final Color primaryColor;
  final Color bottomAppBarColor;
  final ColorScheme colorScheme;
  final TextTheme textTheme;
  DynamicTheme({
    this.brightness,
    this.primarySwatch,
    this.primaryColor,
    this.bottomAppBarColor,
    this.colorScheme,
    this.textTheme,
  });
}

Map<int, Color> color = {
  50: Color.fromRGBO(32, 219, 155, .1),
  100: Color.fromRGBO(35, 219, 155, .2),
  200: Color.fromRGBO(35, 219, 155, .3),
  300: Color.fromRGBO(35, 219, 155, .4),
  400: Color.fromRGBO(35, 219, 155, .5),
  500: Color.fromRGBO(35, 219, 155, .6),
  600: Color.fromRGBO(35, 219, 155, .7),
  700: Color.fromRGBO(35, 219, 155, .8),
  800: Color.fromRGBO(35, 219, 155, .9),
  900: Color.fromRGBO(35, 219, 155, 1),
};

MaterialColor colorCustom = MaterialColor(0xFF20db9b, color);

// LIGHT THEME

ColorScheme _lightScheme = new ColorScheme(
  primary: Color(0xff5de5b5),
  primaryVariant: Color(0xff22DB9B),
  secondary: Color(0xff03dac6),
  secondaryVariant: Color(0xff018786),
  surface: Color(0xffFFFFFF),
  background: Color(0xffEEEEEE),
  error: Color(0xffb00020),
  onPrimary: Colors.white,
  onSecondary: Colors.white,
  onSurface: Colors.black,
  onBackground: Colors.black,
  onError: Colors.white,
  brightness: Brightness.light,
);

TextTheme _lightTextTheme = new TextTheme(
  headline: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: _lightScheme.onBackground),
  title: TextStyle(fontSize: 24, color: _lightScheme.onBackground),
  subtitle: TextStyle(fontSize: 20, color: _lightScheme.onBackground),
  body1: TextStyle(fontSize: 16, color: _lightScheme.onBackground),
  body2: TextStyle(fontSize: 14, color: _lightScheme.onBackground),
  caption: TextStyle(fontSize: 14, color: _lightScheme.onBackground),
  button: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
);

DynamicTheme lightDynamicTheme = new DynamicTheme(
  brightness: Brightness.light,
  primarySwatch: colorCustom,
  primaryColor: colorCustom,
  bottomAppBarColor: Color(0xffDDDDDD),
  colorScheme: _lightScheme,
  textTheme: _lightTextTheme,
);

// DARK THEME

ColorScheme _darkScheme = new ColorScheme(
  primary: Color(0xff5de5b5),
  primaryVariant: Color(0xff22DB9B),
  secondary: Color(0xff03dac6),
  secondaryVariant: Color(0xff018786),
  surface: Color(0xff222222),
  background: Color(0xff121212),
  error: Color(0xffcf6679),
  onPrimary: Colors.black,
  onSecondary: Colors.black,
  onSurface: Colors.white,
  onBackground: Colors.white,
  onError: Colors.black,
  brightness: Brightness.dark,
);

TextTheme _darkTextTheme = new TextTheme(
  headline: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: _darkScheme.onBackground),
  title: TextStyle(fontSize: 24, color: _darkScheme.onBackground),
  subtitle: TextStyle(fontSize: 20, color: _darkScheme.onBackground),
  body1: TextStyle(fontSize: 16, color: _darkScheme.onBackground),
  body2: TextStyle(fontSize: 14, color: _darkScheme.onBackground),
  caption: TextStyle(fontSize: 14, color: _darkScheme.onBackground),
  button: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
);

DynamicTheme darkDynamicTheme = new DynamicTheme(
  brightness: Brightness.dark,
  primarySwatch: colorCustom,
  primaryColor: colorCustom,
  bottomAppBarColor: Color(0xff333333),
  colorScheme: _darkScheme,
  textTheme: _darkTextTheme,
);

