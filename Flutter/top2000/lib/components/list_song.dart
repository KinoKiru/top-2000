import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';
import 'package:top2000/models/song.dart';

class ListSong extends StatefulWidget {
  const ListSong({super.key, required this.song});
  final Song song;

  @override
  State<ListSong> createState() => _ListSongState();
}

class _ListSongState extends State<ListSong> {
  @override
  Widget build(BuildContext context) {
    final double sizeX = MediaQuery.of(context).size.width;
    final double sizeY = MediaQuery.of(context).size.height;

    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.black)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.network(
            faker.image.image(
                width: (sizeX / 6).floor(),
                height: (sizeY < sizeX ? sizeY / 6 : sizeY / 12).floor(),
                random: true),
          ),
          const SizedBox(
            width: 20,
          ),
          Flexible(
            child: Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(
                width: 150,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      widget.song.title,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      widget.song.artist.name,
                      overflow: TextOverflow.ellipsis,
                    )
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Flexible(
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                    Jiffy(widget.song.releaseDate).format('dd MMMM yyyy'))),
          ),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
    );
  }
}
