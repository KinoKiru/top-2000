import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:top2000/models/converters/byte_array.dart';

part 'home_page.freezed.dart';
part 'home_page.g.dart';

@freezed
class HomeData with _$HomeData {
  const factory HomeData({
    required int songId,
    @ByteArray() Uint8List? songPhoto,
    required int releaseYear,
    required String title,
    required int artistId,
    required String name,
    required int place,
    required int? oldPosition,
  }) = _HomeData;

  factory HomeData.fromJson(Map<String, Object?> json) =>
      _$HomeDataFromJson(json);
}
