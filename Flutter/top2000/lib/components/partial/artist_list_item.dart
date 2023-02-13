import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:top2000/models/artist.dart';
import 'package:top2000/pages/artist.dart';
import 'package:faker/faker.dart';

class ArtistList extends StatefulWidget {
  const ArtistList({super.key, required this.artist});
  final Artist artist;

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
      child: InkWell(
        onTap: () {
          PersistentNavBarNavigator.pushNewScreen(
            context,
            screen: ArtistInfo(artistId: widget.artist.artistId),
          );
        },
        child: Row(
          children: [
            if (widget.artist.photo != null) ...[
              Image.memory(widget.artist.photo!),
            ] else ...[
              Image.network(
                faker.image.image(
                    width: (sizeX / 6).floor(),
                    height: (sizeY < sizeX ? sizeY / 6 : sizeY / 12).floor(),
                    random: true),
              ),
            ],
            const SizedBox(
              width: 10,
            ),
            Text(widget.artist.name),
          ],
        ),
      ),
    );
  }
}
