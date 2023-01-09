import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:jiffy/jiffy.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:top2000/components/async_builder.dart';
import 'package:top2000/components/navigation.dart';
import 'package:top2000/globals.dart';

void main() async {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});
  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  Future<bool>? loadColorMode() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? isDark = prefs.getBool('isDark');
    if (isDark != null) {
      isDarkMode = isDark;
    }
    await Jiffy.locale('nl');
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Top2000',
        localizationsDelegates: const <LocalizationsDelegate<dynamic>>[
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const <Locale>[
          Locale('en', ''),
          Locale('es', ''),
          Locale('nl', ''),
        ],
        theme: ThemeData(
          useMaterial3: true,
          brightness: isDarkMode ? Brightness.dark : Brightness.light,
        ),
        home: SimpleAsyncBuilder<bool>(
          future: loadColorMode(),
          onLoad: (bool data, BuildContext context) {
            return Navigation();
          },
        ),
      ),
    );
  }
}
