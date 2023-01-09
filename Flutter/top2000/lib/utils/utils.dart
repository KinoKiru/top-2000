import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget responsiveHomeAppBar(double sizeX, double sizeY) {
  if (sizeX < sizeY) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        const Text('Top2000'),
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
              labelText: 'Search',
            ),
          ),
        ),
      ],
    );
  } else {
    return Row(
      children: <Widget>[
        const Text('Top2000'),
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
                labelText: 'Search',
              ),
            ),
          ),
        ),
      ],
    );
  }
}
