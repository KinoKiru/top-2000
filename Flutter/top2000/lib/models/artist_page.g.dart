// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artist_page.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ArtistData _$$_ArtistDataFromJson(Map<String, dynamic> json) =>
    _$_ArtistData(
      artistId: json['artistId'] as int,
      name: json['name'] as String,
      description: json['description'] as String?,
      artistPhoto: const ByteArray().fromJson(json['artistPhoto'] as String?),
      songPhoto: const ByteArray().fromJson(json['songPhoto'] as String?),
      releaseYear: json['releaseYear'] as int,
      title: json['title'] as String,
    );

Map<String, dynamic> _$$_ArtistDataToJson(_$_ArtistData instance) =>
    <String, dynamic>{
      'artistId': instance.artistId,
      'name': instance.name,
      'description': instance.description,
      'artistPhoto': const ByteArray().toJson(instance.artistPhoto),
      'songPhoto': const ByteArray().toJson(instance.songPhoto),
      'releaseYear': instance.releaseYear,
      'title': instance.title,
    };
