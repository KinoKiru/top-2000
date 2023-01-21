import 'package:faker/faker.dart';
import 'package:flutter/services.dart';
import 'package:top2000/models/artist.dart';

Future<List<Artist>> getArtist({int length = 1, bool withImage = false}) async {
  List<Artist> list = List<Artist>.empty(growable: true);
  final Faker faker = Faker();

  for (int i = 0; i < length; i++) {
    String img = withImage
        ? faker.image.image(width: 120, height: 80, random: true)
        : '';
    list.add(
      withImage
          ? Artist(
              id: faker.randomGenerator.integer(100),
              name: faker.person.name(),
              description: faker.lorem.sentences(4).join(),
              photo: (await NetworkAssetBundle(Uri.parse(img)).load(img))
                  .buffer
                  .asUint8List(),
            )
          : Artist(
              id: faker.randomGenerator.integer(100),
              name: faker.person.name(),
              description: faker.lorem.sentences(4).join(),
            ),
    );
  }

  return list;
}
