import 'package:flutter_secure_storage/flutter_secure_storage.dart';

/// FlutterSecureStorage which is used by the app.
/// View a list of the available keys in /services/storage.dart
final storage = new FlutterSecureStorage();

/// either [true] (finished intro) of [null] (first time)
final String FINISHED_INTRO = "FINISHED_INTRO";
