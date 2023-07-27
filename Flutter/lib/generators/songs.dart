import 'package:faker/faker.dart';
import 'package:flutter/services.dart';
import 'package:jiffy/jiffy.dart';
import 'package:top2000/generators/artist.dart';
import 'package:top2000/models/artist.dart';
import 'package:top2000/models/song.dart';

Future<List<Song>> getSongs(
    {int length = 5, bool withImage = false, String artistName = ''}) async {
  List<Song> list = List<Song>.empty(growable: true);
  final Faker faker = Faker();
  Artist artist = await getArtist(artistName: artistName)
      .then((List<Artist> value) => value[0]);

  for (int i = 0; i < length; i++) {
    String img = withImage
        ? faker.image.image(width: 120, height: 80, random: true)
        : '';
    list.add(
      withImage
          ? Song(
              id: i,
              title: faker.lorem.words(3).join(),
              releaseDate:
                  faker.date.dateTime(minYear: 1900, maxYear: Jiffy().year),
              artist: artistName != ''
                  ? artist
                  : await getArtist().then((List<Artist> value) => value[0]),
              photo: (await NetworkAssetBundle(Uri.parse(img)).load(img))
                  .buffer
                  .asUint8List(),
            )
          : Song(
              id: i,
              title: faker.lorem.words(3).join(),
              releaseDate:
                  faker.date.dateTime(minYear: 1900, maxYear: Jiffy().year),
              artist: artistName != ''
                  ? artist
                  : await getArtist().then((List<Artist> value) => value[0]),
            ),
    );
  }

  return list;
}
