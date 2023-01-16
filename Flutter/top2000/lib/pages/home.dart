import 'package:flutter/material.dart';
import 'package:top2000/components/pagination_list.dart';
import 'package:top2000/components/translation_wrapper.dart';
import 'package:top2000/generators/songs.dart';
import 'package:top2000/models/song.dart';
import 'package:top2000/utils/utils.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Song> songs = getSongs(length: 10);

  @override
  Widget build(BuildContext context) {
    final double sizeX = MediaQuery.of(context).size.width;
    final double sizeY = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
          toolbarHeight: sizeX < sizeY ? 100 : 60,
          title: responsiveHomeAppBar(sizeX, sizeY, context)),
      body: TranslationWrapper(
          onLoad: (BuildContext context) => Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: PaginationList<Song>(
                  items: getSongs(length: 100),
                  itemBuilder: (BuildContext context, int index) =>
                      Text(index.toString()),
                  onEnd: () {},
                ),
              )),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
