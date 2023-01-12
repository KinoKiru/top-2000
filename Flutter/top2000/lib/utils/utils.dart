import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:path_provider/path_provider.dart';

Widget responsiveHomeAppBar(double sizeX, double sizeY, BuildContext context,
    {String title = 'Top2000'}) {
  if (sizeX < sizeY) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(title),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 50,
          child: TextFormField(
            autofocus: false,
            decoration: InputDecoration(
              prefixIcon: const Icon(CupertinoIcons.search),
              prefixIconColor: Colors.grey.shade200,
              border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50))),
              labelText: FlutterI18n.translate(context, 'home.search'),
            ),
          ),
        ),
      ],
    );
  } else {
    return Row(
      children: <Widget>[
        Text(title),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: SizedBox(
            height: 40,
            child: TextFormField(
              autofocus: false,
              decoration: InputDecoration(
                prefixIcon: const Icon(CupertinoIcons.search),
                prefixIconColor: Colors.grey.shade200,
                border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50))),
                labelText: FlutterI18n.translate(context, 'home.search'),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
