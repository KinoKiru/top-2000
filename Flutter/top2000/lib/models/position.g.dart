// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'position.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Position _$$_PositionFromJson(Map<String, dynamic> json) => _$_Position(
      year: json['year'] as int,
      song: Song.fromJson(json['song'] as Map<String, dynamic>),
      place: json['place'] as int,
    );

Map<String, dynamic> _$$_PositionToJson(_$_Position instance) =>
    <String, dynamic>{
      'year': instance.year,
      'song': instance.song,
      'place': instance.place,
    };
