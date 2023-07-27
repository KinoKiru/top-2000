import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

class ByteArray extends JsonConverter<Uint8List?, String?> {
  const ByteArray();

  @override
  Uint8List? fromJson(String? json) {
    if (json == null) {
      return null;
    }

    return Uint8List.fromList(base64Decode(json));
  }

  @override
  String? toJson(Uint8List? object) {
    if (object == null) {
      return null;
    }

    return object.toList().toString();
  }
}
