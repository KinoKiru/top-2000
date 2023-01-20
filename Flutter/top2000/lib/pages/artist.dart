import 'package:faker/faker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';
import 'package:top2000/globals.dart';
import 'package:top2000/models/artist.dart';

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
          SingleChildScrollView(
            child: Text(widget.artist.description),
          ),
        ],
      ),
    );
  }
}
