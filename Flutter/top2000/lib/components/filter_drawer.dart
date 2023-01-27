import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:jiffy/jiffy.dart';
import 'package:top2000/components/date_timepicker.dart';

/// SimpleAsyncBuilder
/// Used when data needs to be awaited but not checked.
class FilterDrawer extends StatefulWidget {
  const FilterDrawer({super.key});

  @override
  State<FilterDrawer> createState() => _FilterDrawerState();
}

class _FilterDrawerState extends State<FilterDrawer> {
  @override
  Widget build(BuildContext context) {
    final double sizeX = MediaQuery.of(context).size.width;
    final double sizeY = MediaQuery.of(context).size.height;
    TextEditingController controller = TextEditingController();
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          SafeArea(
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
              ListTile(
                leading: const Icon(
                  Icons.train,
                ),
                title: const Text('Page 2'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ))
        ],
      ),
    );
  }
}
