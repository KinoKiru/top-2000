import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:top2000/models/song.dart';

part 'position.freezed.dart';
part 'position.g.dart';

@freezed
class Position with _$Position {
  const factory Position({
    required int year,
    required Song song,
    required int place,
  }) = _Position;

  factory Position.fromJson(Map<String, Object?> json) =>
      _$PositionFromJson(json);
}
