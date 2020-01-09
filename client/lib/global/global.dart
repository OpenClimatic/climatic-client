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

/// This will be your class for creating dynamic Themes.
/// You can also add your custom Color,Brightness,Size, etc.
/// by adding in parameters.
/// [If you will add some parameters here, make sure you also add in INITIAL, LIGHT and DARK Mode]
/// so you will not get an error.
class DynamicTheme {
  final Brightness brightness;
  final Color text;
  final double fontSize;
  final MaterialColor primarySwatch;
  final Color primaryColor;
  final Color accentColor;
  final Color backgroundColor;
  final Color habitBackgroundColor;
  DynamicTheme(
      {this.brightness,
      this.text,
      this.fontSize,
      this.primarySwatch,
      this.primaryColor,
      this.accentColor,
      this.backgroundColor,
      this.habitBackgroundColor});
}

DynamicTheme lightMode = DynamicTheme(
    brightness: Brightness.light,
    primarySwatch: colorCustom,
    primaryColor: colorCustom,
    accentColor: Colors.red,
    backgroundColor: Colors.white12,
    habitBackgroundColor: Colors.grey[100]);

DynamicTheme darkMode = DynamicTheme(
    brightness: Brightness.dark,
    primarySwatch: colorCustom,
    primaryColor: colorCustom,
    accentColor: Colors.blue,
    backgroundColor: Colors.black12,
    habitBackgroundColor: Colors.black38);

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
