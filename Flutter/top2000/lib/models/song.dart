import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'song.freezed.dart';
part 'song.g.dart';

//TODO Artist as object
class ConvertImage extends JsonConverter<Uint8List?, List<int>?> {
  const ConvertImage();

  @override
  Uint8List? fromJson(List<int>? json) {
    if (json == null) {
      return null;
    }

    return Uint8List.fromList(json);
  }

  @override
  List<int>? toJson(Uint8List? object) {
    if (object == null) {
      return null;
    }

    return object.toList();
  }
}

@freezed
class Song with _$Song {
  const factory Song({
    required int id,
    required String title,
    required DateTime releaseDate,
    required int artistId,
    @ConvertImage() Uint8List? photo,
  }) = _Song;

  factory Song.fromJson(Map<String, Object?> json) => _$SongFromJson(json);
}
