import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:top2000/models/converters/byte_array.dart';

part 'artist_page.freezed.dart';
part 'artist_page.g.dart';

@freezed
class ArtistData with _$ArtistData {
  const factory ArtistData({
    required int artistId,
    required String name,
    required String? description,
    @ByteArray() Uint8List? artistPhoto,
    @ByteArray() Uint8List? songPhoto,
    required int releaseYear,
    required String title,
  }) = _ArtistData;

  factory ArtistData.fromJson(Map<String, Object?> json) =>
      _$ArtistDataFromJson(json);
}
