// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'song.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Song _$$_SongFromJson(Map<String, dynamic> json) => _$_Song(
      id: json['id'] as int,
      title: json['title'] as String,
      releaseDate: DateTime.parse(json['releaseDate'] as String),
      artist: Artist.fromJson(json['artist'] as Map<String, dynamic>),
      photo: const ByteArray().fromJson(json['photo'] as String?),
    );

Map<String, dynamic> _$$_SongToJson(_$_Song instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'releaseDate': instance.releaseDate.toIso8601String(),
      'artist': instance.artist,
      'photo': const ByteArray().toJson(instance.photo),
    };
