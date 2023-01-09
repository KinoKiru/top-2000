import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:top2000/components/async_builder.dart';
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
    return SimpleAsyncBuilder(
        future: loadPrefrences(),
        onLoad: (bool data, BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Settings'),
            ),
            body: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Switch(
                      value: isDarkMode,
                      onChanged: (bool value) {
                        setState(() {
                          preferences.setBool('isDark', value);
                          isDarkMode = value;
                        });
                      }),
                  const Text(
                    'Settings',
                  ),
                  Align(
                      alignment: FractionalOffset.bottomCenter,
                      child: Text('Datum: ${Jiffy().format('D MMMM yyyy')}'))
                ],
              ),
            ),
          );
        });
  }
}
