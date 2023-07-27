import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:top2000/components/translation_wrapper.dart';

class HomeAppBar extends StatefulWidget {
  const HomeAppBar({super.key, required this.title});
  final String title;

  @override
  State<HomeAppBar> createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {
  @override
  Widget build(BuildContext context) {
    return TranslationWrapper(
      onLoad: (BuildContext context) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(widget.title),
                InkWell(
                  onTap: () => Scaffold.of(context).openEndDrawer(),
                  child: const Icon(CupertinoIcons.slider_horizontal_3),
                )
              ],
            ),
          ],
        );
      },
    );
  }
}
