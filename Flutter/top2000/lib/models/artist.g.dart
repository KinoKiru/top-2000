// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Artist _$$_ArtistFromJson(Map<String, dynamic> json) => _$_Artist(
      artistId: json['artistId'] as int,
      name: json['name'] as String,
      description: json['description'] as String?,
      photo: const ByteArray().fromJson(json['photo'] as List<int>?),
    );

Map<String, dynamic> _$$_ArtistToJson(_$_Artist instance) => <String, dynamic>{
      'artistId': instance.artistId,
      'name': instance.name,
      'description': instance.description,
      'photo': const ByteArray().toJson(instance.photo),
    };
