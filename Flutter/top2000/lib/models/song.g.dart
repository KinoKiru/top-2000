// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'song.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Song _$$_SongFromJson(Map<String, dynamic> json) => _$_Song(
      id: json['id'] as int,
      title: json['title'] as String,
      releaseDate: DateTime.parse(json['releaseDate'] as String),
      artistId: json['artistId'] as int,
      photo: const ConvertImage().fromJson(json['photo'] as List<int>?),
    );

Map<String, dynamic> _$$_SongToJson(_$_Song instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'releaseDate': instance.releaseDate.toIso8601String(),
      'artistId': instance.artistId,
      'photo': const ConvertImage().toJson(instance.photo),
    };
