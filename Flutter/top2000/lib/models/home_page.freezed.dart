// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_page.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HomeData _$HomeDataFromJson(Map<String, dynamic> json) {
  return _HomeData.fromJson(json);
}

/// @nodoc
mixin _$HomeData {
  int get songId => throw _privateConstructorUsedError;
  @ByteArray()
  Uint8List? get songPhoto => throw _privateConstructorUsedError;
  int get releaseYear => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get artistId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get place => throw _privateConstructorUsedError;
  int? get oldPosition => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeDataCopyWith<HomeData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeDataCopyWith<$Res> {
  factory $HomeDataCopyWith(HomeData value, $Res Function(HomeData) then) =
      _$HomeDataCopyWithImpl<$Res, HomeData>;
  @useResult
  $Res call(
      {int songId,
      @ByteArray() Uint8List? songPhoto,
      int releaseYear,
      String title,
      int artistId,
      String name,
      int place,
      int? oldPosition});
}

/// @nodoc
class _$HomeDataCopyWithImpl<$Res, $Val extends HomeData>
    implements $HomeDataCopyWith<$Res> {
  _$HomeDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? songId = null,
    Object? songPhoto = freezed,
    Object? releaseYear = null,
    Object? title = null,
    Object? artistId = null,
    Object? name = null,
    Object? place = null,
    Object? oldPosition = freezed,
  }) {
    return _then(_value.copyWith(
      songId: null == songId
          ? _value.songId
          : songId // ignore: cast_nullable_to_non_nullable
              as int,
      songPhoto: freezed == songPhoto
          ? _value.songPhoto
          : songPhoto // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      releaseYear: null == releaseYear
          ? _value.releaseYear
          : releaseYear // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      artistId: null == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      place: null == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as int,
      oldPosition: freezed == oldPosition
          ? _value.oldPosition
          : oldPosition // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeDataCopyWith<$Res> implements $HomeDataCopyWith<$Res> {
  factory _$$_HomeDataCopyWith(
          _$_HomeData value, $Res Function(_$_HomeData) then) =
      __$$_HomeDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int songId,
      @ByteArray() Uint8List? songPhoto,
      int releaseYear,
      String title,
      int artistId,
      String name,
      int place,
      int? oldPosition});
}

/// @nodoc
class __$$_HomeDataCopyWithImpl<$Res>
    extends _$HomeDataCopyWithImpl<$Res, _$_HomeData>
    implements _$$_HomeDataCopyWith<$Res> {
  __$$_HomeDataCopyWithImpl(
      _$_HomeData _value, $Res Function(_$_HomeData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? songId = null,
    Object? songPhoto = freezed,
    Object? releaseYear = null,
    Object? title = null,
    Object? artistId = null,
    Object? name = null,
    Object? place = null,
    Object? oldPosition = freezed,
  }) {
    return _then(_$_HomeData(
      songId: null == songId
          ? _value.songId
          : songId // ignore: cast_nullable_to_non_nullable
              as int,
      songPhoto: freezed == songPhoto
          ? _value.songPhoto
          : songPhoto // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      releaseYear: null == releaseYear
          ? _value.releaseYear
          : releaseYear // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      artistId: null == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      place: null == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as int,
      oldPosition: freezed == oldPosition
          ? _value.oldPosition
          : oldPosition // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HomeData with DiagnosticableTreeMixin implements _HomeData {
  const _$_HomeData(
      {required this.songId,
      @ByteArray() this.songPhoto,
      required this.releaseYear,
      required this.title,
      required this.artistId,
      required this.name,
      required this.place,
      required this.oldPosition});

  factory _$_HomeData.fromJson(Map<String, dynamic> json) =>
      _$$_HomeDataFromJson(json);

  @override
  final int songId;
  @override
  @ByteArray()
  final Uint8List? songPhoto;
  @override
  final int releaseYear;
  @override
  final String title;
  @override
  final int artistId;
  @override
  final String name;
  @override
  final int place;
  @override
  final int? oldPosition;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeData(songId: $songId, songPhoto: $songPhoto, releaseYear: $releaseYear, title: $title, artistId: $artistId, name: $name, place: $place, oldPosition: $oldPosition)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeData'))
      ..add(DiagnosticsProperty('songId', songId))
      ..add(DiagnosticsProperty('songPhoto', songPhoto))
      ..add(DiagnosticsProperty('releaseYear', releaseYear))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('artistId', artistId))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('place', place))
      ..add(DiagnosticsProperty('oldPosition', oldPosition));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeData &&
            (identical(other.songId, songId) || other.songId == songId) &&
            const DeepCollectionEquality().equals(other.songPhoto, songPhoto) &&
            (identical(other.releaseYear, releaseYear) ||
                other.releaseYear == releaseYear) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.artistId, artistId) ||
                other.artistId == artistId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.place, place) || other.place == place) &&
            (identical(other.oldPosition, oldPosition) ||
                other.oldPosition == oldPosition));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      songId,
      const DeepCollectionEquality().hash(songPhoto),
      releaseYear,
      title,
      artistId,
      name,
      place,
      oldPosition);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeDataCopyWith<_$_HomeData> get copyWith =>
      __$$_HomeDataCopyWithImpl<_$_HomeData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HomeDataToJson(
      this,
    );
  }
}

abstract class _HomeData implements HomeData {
  const factory _HomeData(
      {required final int songId,
      @ByteArray() final Uint8List? songPhoto,
      required final int releaseYear,
      required final String title,
      required final int artistId,
      required final String name,
      required final int place,
      required final int? oldPosition}) = _$_HomeData;

  factory _HomeData.fromJson(Map<String, dynamic> json) = _$_HomeData.fromJson;

  @override
  int get songId;
  @override
  @ByteArray()
  Uint8List? get songPhoto;
  @override
  int get releaseYear;
  @override
  String get title;
  @override
  int get artistId;
  @override
  String get name;
  @override
  int get place;
  @override
  int? get oldPosition;
  @override
  @JsonKey(ignore: true)
  _$$_HomeDataCopyWith<_$_HomeData> get copyWith =>
      throw _privateConstructorUsedError;
}
