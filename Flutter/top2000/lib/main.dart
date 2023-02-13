import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:jiffy/jiffy.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:top2000/components/navigation.dart';
import 'package:top2000/components/translation_wrapper.dart';
import 'package:top2000/globals.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool? isDark = prefs.getBool('isDark');
  if (isDark != null) {
    isDarkMode = isDark;
  }
  runApp(App(
    locale: prefs.getString('locale') ?? 'nl',
  ));
}

class App extends StatefulWidget {
  const App({super.key, required this.locale});
  final String locale;
  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Top2000',
        localizationsDelegates: <LocalizationsDelegate<dynamic>>[
          FlutterI18nDelegate(
            translationLoader: FileTranslationLoader(
              forcedLocale: Locale(widget.locale),
              fallbackFile: 'en',
              useCountryCode: false,
            ),
            missingTranslationHandler: (String? key, Locale? locale) {
              print(
                  '--- Missing Key: $key, languageCode: ${locale?.languageCode}');
            },
          ),
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        theme: ThemeData(
          useMaterial3: true,
          brightness: isDarkMode ? Brightness.dark : Brightness.light,
        ),
        home: TranslationWrapper(
          onLoad: (BuildContext context) => Navigation(),
        ),
      ),
    );
  }
}
