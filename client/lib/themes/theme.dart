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
CustomColors cc = CustomColors();

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

MaterialColor colorCustom = MaterialColor(0xFF21D294, color);

// LIGHT THEME

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
    headline: TextStyle(
      fontSize: 28,
      fontFamily: 'Nunito',
      fontWeight: FontWeight.w700,
    ),
    title:
        TextStyle(fontSize: 24, fontFamily: 'Nunito', color: Color(0xff00162A)),
    subtitle: TextStyle(
        fontSize: 20, fontFamily: 'Poppins', color: _lightScheme.onBackground),
    body1: TextStyle(
        fontSize: 16, fontFamily: 'Poppins', color: _lightScheme.onBackground),
    body2: TextStyle(fontSize: 14, color: _lightScheme.onBackground),
    caption: TextStyle(
        fontSize: 14, fontFamily: 'Poppins', color: _lightScheme.onBackground),
    button: TextStyle(fontSize: 18, fontFamily: 'Poppins'));

DynamicTheme lightDynamicTheme = new DynamicTheme(
  brightness: Brightness.light,
  primarySwatch: colorCustom,
  primaryColor: _lightScheme.primary,
  bottomAppBarColor: _lightScheme.surface,
  colorScheme: _lightScheme,
  textTheme: _lightTextTheme,
);

// DARK THEME

ColorScheme _darkScheme = new ColorScheme(
  primary: Color(0xff12C787),
  primaryVariant: Color(0xffCDFFCC),
  secondary: Color(0xff1D6C9D),
  secondaryVariant: Color(0xffCCF2FF),
  surface: Colors.black87,
  background: Colors.black,
  error: Color(0xffEB5757),
  onPrimary: Colors.white,
  onSecondary: Colors.white,
  onSurface: Colors.white,
  onBackground: Colors.white,
  onError: Colors.black,
  brightness: Brightness.dark,
);

TextTheme _darkTextTheme = new TextTheme(
  headline: TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: _darkScheme.onBackground),
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
