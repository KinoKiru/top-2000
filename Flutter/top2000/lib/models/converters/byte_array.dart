import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class ByteArray extends JsonConverter<Uint8List?, List<int>?> {
  const ByteArray();

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
