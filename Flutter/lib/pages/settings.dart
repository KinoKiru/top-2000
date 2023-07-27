import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:jiffy/jiffy.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:top2000/components/async_builder.dart';
import 'package:top2000/components/translation_wrapper.dart';
import 'package:top2000/globals.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  late SharedPreferences preferences;

  Future<bool>? loadPrefrences() async {
    preferences = await SharedPreferences.getInstance();
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return SimpleAsyncBuilder<bool>(
        future: loadPrefrences(),
        onLoad: (bool data, BuildContext context) {
          return Scaffold(
              appBar: AppBar(
                title: const Text('Settings'),
              ),
              body: TranslationWrapper(
                onLoad: (BuildContext context) => SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Align(
                          alignment: FractionalOffset.centerLeft,
                          child: Text(
                              FlutterI18n.translate(context, 'settings.color'),
                              style: const TextStyle(fontSize: 20)),
                        ),
                      ),
                      Switch(
                          value: isDarkMode,
                          onChanged: (bool value) {
                            setState(() {
                              preferences.setBool('isDark', value);
                              isDarkMode = value;
                            });
                          }),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Align(
                          alignment: FractionalOffset.centerLeft,
                          child: Text(
                              FlutterI18n.translate(
                                  context, 'settings.locales'),
                              style: const TextStyle(fontSize: 20)),
                        ),
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: localeButtons(context, preferences)),
                      Align(
                          alignment: FractionalOffset.bottomCenter,
                          child:
                              Text('Datum: ${Jiffy().format('d MMMM yyyy')}'))
                    ],
                  ),
                ),
              ));
        });
  }
}

List<Widget> localeButtons(
    BuildContext context, SharedPreferences preferences) {
  List<Widget> buttons = List<Widget>.empty(growable: true);
  for (final String locale in <String>['nl', 'es', 'en', 'de']) {
    buttons.add(ElevatedButton(
        onPressed: () async {
          preferences.setString('locale', locale);
          await FlutterI18n.refresh(context, Locale(locale));
          await Jiffy.locale(locale);
        },
        child: Text(locale)));
  }
  return buttons;
}
