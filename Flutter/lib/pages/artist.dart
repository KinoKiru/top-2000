import 'package:faker/faker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:top2000/components/async_builder.dart';
import 'package:top2000/components/partial/artist_song_list_item.dart';
import 'package:top2000/components/translation_wrapper.dart';
import 'package:top2000/globals.dart';
import 'package:top2000/models/artist_page.dart';
import 'package:top2000/utils/data_provider.dart';
import 'package:top2000/utils/utils.dart';
import 'package:top2000/utils/extensions.dart';

class ArtistInfo extends StatefulWidget {
  const ArtistInfo({super.key, required this.artistId});
  final int artistId;

  @override
  State<ArtistInfo> createState() => _ArtistInfoState();
}

class _ArtistInfoState extends State<ArtistInfo> {
  RemoteService owo = RemoteService();

  @override
  Widget build(BuildContext context) {
    final double sizeX = MediaQuery.of(context).size.width;
    final double sizeY = MediaQuery.of(context).size.height;

    return SimpleAsyncBuilder<List<ArtistData>>(
      future: owo.getArtist(widget.artistId.toString()),
      onLoad: (List<ArtistData> data, BuildContext context) => Scaffold(
        body: TranslationWrapper(
          onLoad: (BuildContext context) => Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: data[0].artistPhoto != null
                          ? Image.memory(data[0].artistPhoto!).image
                          : NetworkImage(
                              faker.image.image(
                                width: (sizeX).floor(),
                                height: (sizeY / 4).floor(),
                                random: true,
                              ),
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
                          child: const Icon(
                            CupertinoIcons.arrow_left,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        height:
                            (sizeY > sizeX ? (sizeY / 4) / 4 : (sizeY / 3) / 3)
                                .floorToDouble(),
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: <Color>[Colors.black, Colors.transparent],
                          ),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                data[0].name,
                                style: const TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        FlutterI18n.translate(context, 'artist.description'),
                        style: const TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        data[0].description ??
                            FlutterI18n.translate(context, 'artist.noData'),
                        style: const TextStyle(fontStyle: FontStyle.italic),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap),
                        onPressed: () async {
                          launchSite(
                              '${FlutterI18n.currentLocale(context)?.languageCode}.wikipedia.org/wiki/${data[0].name.capitalizeAll().replaceAll(' ', '_')}');
                        },
                        child: Text(
                            FlutterI18n.translate(context, 'artist.moreInfo')),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        FlutterI18n.translate(context, 'artist.songs'),
                        style: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: sizeY / 1.9,
                        child: ListView.builder(
                          padding: EdgeInsets.zero,
                          itemCount: data.length,
                          itemBuilder: (BuildContext context, int index) =>
                              ArtistSongList(song: data[index]),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
