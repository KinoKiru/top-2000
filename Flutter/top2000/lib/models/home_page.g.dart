// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_page.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HomeData _$$_HomeDataFromJson(Map<String, dynamic> json) => _$_HomeData(
      songId: json['songId'] as int,
      songPhoto: const ByteArray().fromJson(json['songPhoto'] as List<int>?),
      releaseYear: json['releaseYear'] as int,
      title: json['title'] as String,
      artistId: json['artistId'] as int,
      name: json['name'] as String,
      place: json['place'] as int,
      oldPosition: json['oldPosition'] as int?,
    );

Map<String, dynamic> _$$_HomeDataToJson(_$_HomeData instance) =>
    <String, dynamic>{
      'songId': instance.songId,
      'songPhoto': const ByteArray().toJson(instance.songPhoto),
      'releaseYear': instance.releaseYear,
      'title': instance.title,
      'artistId': instance.artistId,
      'name': instance.name,
      'place': instance.place,
      'oldPosition': instance.oldPosition,
    };
