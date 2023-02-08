import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';
import 'package:top2000/models/artist_page.dart';

class ArtistList extends StatefulWidget {
  const ArtistList({super.key, required this.song});
  final ArtistData song;

  @override
  State<ArtistList> createState() => _ArtistListState();
}

class _ArtistListState extends State<ArtistList> {
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
          if (widget.song.songPhoto != null) ...[
            Image.memory(widget.song.songPhoto!),
          ] else ...[
            Image.network(
              faker.image.image(
                  width: (sizeX / 6).floor(),
                  height: (sizeY < sizeX ? sizeY / 6 : sizeY / 12).floor(),
                  random: true),
            ),
          ],
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
                      widget.song.name,
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
                widget.song.releaseYear.toString(),
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
    );
  }
}
