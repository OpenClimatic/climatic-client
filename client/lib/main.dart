import "package:client/services/ThemeNotifier.dart";
import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:provider/provider.dart";
import "package:client/pages/App.dart";
import "package:client/pages/AuthLoading.dart";
import "package:client/pages/VierNullVier.dart";
import "package:client/pages/app/Dashboard.dart";
import "package:client/pages/app/Discover.dart";
import "package:client/pages/app/Profile.dart";
import "package:client/pages/app/SavingSplash.dart";
import "package:client/pages/appIntro/AppIntro.dart";
import "package:client/pages/appIntro/IntroPage1.dart";
import "package:client/pages/appIntro/IntroPage2.dart";
import "package:client/pages/appIntro/IntroPage3.dart";
import "package:client/pages/appIntro/IntroPage4.dart";
import "package:client/pages/blog-posts/DiscoverBlogPostDetailedView.dart";
import "package:client/pages/settings/Allgemein.dart";
import "package:client/pages/settings/Datenschutz.dart";
import "package:client/pages/settings/Settings.dart";
import "package:client/pages/settings/Support.dart";
import "package:client/pages/settings/UeberUns.dart";

import "package:client/themes/theme.dart" as theme;
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
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case "/":
            return CupertinoPageRoute(
                builder: (_) => AuthLoading(), settings: settings);
          case "Home":
            return CupertinoPageRoute(
                builder: (_) => App(), settings: settings);
          case "Dashboard":
            return CupertinoPageRoute(
                builder: (_) => Dashboard(), settings: settings);
          case "Discover":
            return CupertinoPageRoute(
                builder: (_) => Discover(), settings: settings);
          case "SavingSplash":
            return CupertinoPageRoute(
                builder: (_) => SavingsSplash(), settings: settings);
          case "Settings":
            return CupertinoPageRoute(
                builder: (_) => Settings(), settings: settings);
          case "Settings/Allgemein":
            return CupertinoPageRoute(
                builder: (_) => Allgemein(), settings: settings);
          case "Settings/Datenschutz":
            return CupertinoPageRoute(
                builder: (_) => Datenschutz(), settings: settings);
          case "Settings/Support":
            return CupertinoPageRoute(
                builder: (_) => Support(), settings: settings);
          case "Settings/UeberUns":
            return CupertinoPageRoute(
                builder: (_) => About(), settings: settings);
          case "Profile":
            return CupertinoPageRoute(
                builder: (_) => Profile(), settings: settings);
          case "AppIntro":
            return CupertinoPageRoute(
                builder: (_) => AppIntro(), settings: settings);
          case "AppIntro/1":
            return CupertinoPageRoute(
                builder: (_) => IntroPage1(), settings: settings);
          case "AppIntro/2":
            return CupertinoPageRoute(
                builder: (_) => IntroPage2(), settings: settings);
          case "AppIntro/3":
            return CupertinoPageRoute(
                builder: (_) => IntroPage3(), settings: settings);
          case "AppIntro/4":
            return CupertinoPageRoute(
                builder: (_) => IntroPage4(), settings: settings);
          case "DiscoverBlogPostDetailedView":
            return CupertinoPageRoute(
                builder: (_) => DiscoverBlogPostDetailedView(),
                settings: settings);
          default:
            return CupertinoPageRoute(
                builder: (_) => VierNullVier(), settings: settings);
        }
      },
    );
  }
}
