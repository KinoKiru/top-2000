import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:top2000/models/converters/byte_array.dart';

part 'artist.freezed.dart';
part 'artist.g.dart';

@freezed
class Artist with _$Artist {
  const factory Artist({
    required int artistId,
    required String name,
    required String? description,
    @ByteArray() Uint8List? photo,
  }) = _Artist;

  factory Artist.fromJson(Map<String, Object?> json) => _$ArtistFromJson(json);
}
