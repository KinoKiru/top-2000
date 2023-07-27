import 'package:faker/faker.dart';
import 'package:jiffy/jiffy.dart';
import 'package:top2000/generators/songs.dart';
import 'package:top2000/models/position.dart';
import 'package:top2000/models/song.dart';

Future<List<Position>> getPosition({int length = 1}) async {
  List<Position> list = List<Position>.empty(growable: true);
  final Faker faker = Faker();
  final int year = Jiffy(
          '${faker.randomGenerator.integer(2022, min: 1940)}-10-10', 'y-MM-dd')
      .year;

  for (int i = 0; i < length; i++) {
    list.add(
      Position(
        place: faker.randomGenerator.integer(2000),
        oldPlace: faker.randomGenerator.integer(2000),
        song: await getSongs(length: 1).then((List<Song> value) => value[0]),
        year: year,
      ),
    );
  }

  return list;
}
