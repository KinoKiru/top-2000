import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:top2000/models/converters/byte_array.dart';

part 'song.freezed.dart';
part 'song.g.dart';

//TODO Artist as object

@freezed
class Song with _$Song {
  const factory Song({
    required int id,
    required String title,
    required DateTime releaseDate,
    required int artistId,
    @ByteArray() Uint8List? photo,
  }) = _Song;

  factory Song.fromJson(Map<String, Object?> json) => _$SongFromJson(json);
}
