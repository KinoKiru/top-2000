import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:top2000/components/date_timepicker.dart';
import 'package:top2000/globals.dart';
import 'package:top2000/pages/home.dart';

/// SimpleAsyncBuilder
/// Used when data needs to be awaited but not checked.
class FilterDrawer extends StatefulWidget {
  const FilterDrawer({super.key});

  @override
  State<FilterDrawer> createState() => _FilterDrawerState();
}

class _FilterDrawerState extends State<FilterDrawer> {
  bool reversed = false;
  bool includeIncrease = false;
  bool includeDecrease = false;
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final double sizeX = MediaQuery.of(context).size.width;
    final double sizeY = MediaQuery.of(context).size.height;
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              children: [
                Image.asset('assets/images/Top-2000-logo-en-cafe.jpg'),
                SafeArea(
                  top: true,
                  child: Column(
                    children: <Widget>[
                      InkWell(
                        onTap: () => Navigator.pop(context),
                        child: const Icon(CupertinoIcons.clear_thick),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                FlutterI18n.translate(context, 'drawer.year'),
                                style: const TextStyle(fontSize: 20),
                              ),
                            ),
                            DateTimePicker(
                              controller: controller,
                              width: sizeX,
                              height: sizeY / 15,
                              yearpicker: true,
                            )
                          ],
                        ),
                      ),
                      CheckboxListTile(
                        value: reversed,
                        controlAffinity: ListTileControlAffinity.trailing,
                        title: Text(
                            FlutterI18n.translate(context, 'drawer.reversed')),
                        onChanged: (bool? value) {
                          setState(() {
                            reversed = value!;
                          });
                        },
                      ),
                      CheckboxListTile(
                        value: includeDecrease,
                        controlAffinity: ListTileControlAffinity.trailing,
                        title: Text(
                            FlutterI18n.translate(context, 'drawer.decrease')),
                        onChanged: (bool? value) {
                          setState(() {
                            includeDecrease = value!;
                          });
                        },
                      ),
                      CheckboxListTile(
                        value: includeIncrease,
                        controlAffinity: ListTileControlAffinity.trailing,
                        title: Text(
                            FlutterI18n.translate(context, 'drawer.increase')),
                        onChanged: (bool? value) {
                          setState(() {
                            includeIncrease = value!;
                          });
                        },
                      ),
                      Text(reversed.toString()),
                      SizedBox(
                        width: sizeX * 0.65,
                        child: TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute<Home>(
                                  builder: (BuildContext context) => Home(
                                      searchOptions:
                                          'year=${controller.text.toString()}&reversed=$reversed&onlyIncreased=$includeIncrease&onlyDecreased=$includeDecrease'),
                                ));
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueAccent.shade700,
                            shadowColor: Colors.transparent,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          child: Text(
                            FlutterI18n.translate(context, 'home.search'),
                            style: TextStyle(
                              color: isDarkMode ? Colors.white : Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
