import 'package:faker/faker.dart';
import 'package:top2000/models/song.dart';

List<Song> getSongs({int length = 5}) {
  List<Song> list = List<Song>.empty(growable: true);
  final Faker faker = Faker();

  for (int i = 0; i < length; i++) {
    list.add(Song(
        id: i,
        title: faker.lorem.words(3).join(),
        releaseDate: faker.date.dateTime(),
        artistId: faker.randomGenerator.integer(100)));
  }

  return list;
}
