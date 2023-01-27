import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:top2000/components/async_builder.dart';
import 'package:top2000/components/filter_drawer.dart';
import 'package:top2000/components/list_song.dart';
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
  @override
  Widget build(BuildContext context) {
    final double sizeX = MediaQuery.of(context).size.width;
    final double sizeY = MediaQuery.of(context).size.height;

    return SimpleAsyncBuilder<List<Song>>(
      future: getSongs(length: 5),
      onLoad: (List<Song> data, BuildContext context) => Scaffold(
        endDrawer: const FilterDrawer(),
        appBar: AppBar(
            actions: <Widget>[Container()],
            toolbarHeight: sizeX < sizeY ? 120 : 60,
            title: responsiveHomeAppBar(sizeX, sizeY, context)),
        body: TranslationWrapper(
          onLoad: (BuildContext context) => Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: PaginationList<Song>(
              preloadItems: data,
              itemBuilder: (BuildContext context, Song item, int index) =>
                  ListSong(song: item),
              onEnd: () async {
                return await getSongs();
              },
            ),
          ),
        ),
      ),
    );
  }
}
