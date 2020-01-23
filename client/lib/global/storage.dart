import 'package:flutter_secure_storage/flutter_secure_storage.dart';

/// FlutterSecureStorage which is used by the app.
/// View a list of the available keys in /global/storage.dart
final storage = new FlutterSecureStorage();

/// either [true] (finished intro) of [null] (first time)
final String FINISHED_INTRO = "FINISHED_INTRO";
/// either [true] if the user has set a theme else [null] if the user has not jet set a theme
final String HAS_THEME= "HAS_THEME";
/// shows what theme the user uses currently there are [lightDynamicTheme] and [darkDynamicTheme]
final String THEME = "THEME";