import "package:client/services/ThemeNotifier.dart";
import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:provider/provider.dart";
import "package:client/themes/theme.dart" as theme;
import "package:client/routes.dart";
import "package:shared_preferences/shared_preferences.dart";

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences.getInstance().then((prefs) {
    var darkModeOn = prefs.getBool("darkMode") ?? true;

    runApp(
      ChangeNotifierProvider<ThemeNotifier>(
        create: (_) =>
            ThemeNotifier(darkModeOn ? theme.darkTheme : theme.lightTheme),
        child: MyApp(),
      ),
    );
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    return new MaterialApp(
        title: "Climalytic",
        theme: themeNotifier.getTheme(),
        initialRoute: "/",
        debugShowCheckedModeBanner: false,
        onGenerateRoute: routes
    );
  }
}
