import 'package:faker/faker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';
import 'package:top2000/components/async_builder.dart';
import 'package:top2000/components/list_song.dart';
import 'package:top2000/components/pagination_list.dart';
import 'package:top2000/generators/songs.dart';
import 'package:top2000/globals.dart';
import 'package:top2000/models/artist.dart';
import 'package:top2000/models/song.dart';
import 'package:top2000/utils/utils.dart';

class ArtistInfo extends StatefulWidget {
  const ArtistInfo({super.key, required this.artist});
  final Artist artist;

  @override
  State<ArtistInfo> createState() => _ArtistInfoState();
}

class _ArtistInfoState extends State<ArtistInfo> {
  @override
  Widget build(BuildContext context) {
    final double sizeX = MediaQuery.of(context).size.width;
    final double sizeY = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                    faker.image.image(
                        width: (sizeX).floor(),
                        height: (sizeY / 4).floor(),
                        random: true),
                  ),
                ),
                color: isDarkMode ? Colors.grey.shade700 : Colors.white38),
            height: (sizeY > sizeX ? sizeY / 4 : sizeY / 3).floorToDouble(),
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 4.0, top: 4.0),
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black.withOpacity(0.6),
                        ),
                        child: Icon(
                          CupertinoIcons.arrow_left,
                          color: isDarkMode ? Colors.white : Colors.black,
                        )),
                  ),
                  Container(
                    height: (sizeY > sizeX ? (sizeY / 4) / 4 : (sizeY / 3) / 3)
                        .floorToDouble(),
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: <Color>[Colors.black, Colors.transparent])),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            widget.artist.name,
                            style: const TextStyle(
                                fontSize: 30, fontWeight: FontWeight.w400),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    FlutterI18n.translate(context, 'artist.description'),
                    style: const TextStyle(
                        fontSize: 17, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 1,
                  ),
                  Text(
                    widget.artist.description,
                    style: const TextStyle(fontStyle: FontStyle.italic),
                  ),
                  TextButton(
                    onPressed: () {
                      launchSite(
                          'https://nl.wikipedia.org/wiki/Michael_Jackson');
                    },
                    child: const Text('wikipedia'),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    FlutterI18n.translate(context, 'artist.songs'),
                    style: const TextStyle(
                        fontSize: 17, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: sizeY / 3,
                    child: SimpleAsyncBuilder<List<Song>>(
                      future: getSongs(length: 10),
                      onLoad: (List<Song> data, BuildContext context) =>
                          PaginationList<Song>(
                        items: data,
                        itemBuilder: (BuildContext context, int index) =>
                            ListSong(song: data[index]),
                        onEnd: () {},
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
