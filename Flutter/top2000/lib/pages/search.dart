import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:top2000/components/partial/artist_list_item.dart';
import 'package:top2000/models/artist.dart';
import 'package:top2000/utils/data_provider.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final RemoteService _service = RemoteService();
  List<Artist> foundArtist = List<Artist>.empty(growable: true);

  @override
  Widget build(BuildContext context) {
    final double sizeX = MediaQuery.of(context).size.width;
    final double sizeY = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 12, right: 12, top: 12),
            child: SizedBox(
              height: 50,
              child: TextFormField(
                onChanged: (value) async {
                  if (value.length > 3) {
                    foundArtist = await _service.searchArtist(value);
                    setState(() {});
                  } else {
                    foundArtist.clear();
                    setState(() {});
                  }
                },
                autofocus: false,
                decoration: InputDecoration(
                  prefixIcon: const Icon(CupertinoIcons.search),
                  prefixIconColor: Colors.grey.shade200,
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    ),
                  ),
                  labelText:
                      FlutterI18n.translate(context, 'navigation.search'),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemBuilder: (BuildContext context, int index) =>
                  ArtistList(artist: foundArtist[index]),
              itemCount: foundArtist.length,
            ),
          )
        ],
      ),
    );
  }
}
