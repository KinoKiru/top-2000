// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'artist_page.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ArtistData _$ArtistDataFromJson(Map<String, dynamic> json) {
  return _ArtistData.fromJson(json);
}

/// @nodoc
mixin _$ArtistData {
  int get artistId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @ByteArray()
  Uint8List? get artistPhoto => throw _privateConstructorUsedError;
  @ByteArray()
  Uint8List? get songPhoto => throw _privateConstructorUsedError;
  int get releaseYear => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArtistDataCopyWith<ArtistData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistDataCopyWith<$Res> {
  factory $ArtistDataCopyWith(
          ArtistData value, $Res Function(ArtistData) then) =
      _$ArtistDataCopyWithImpl<$Res, ArtistData>;
  @useResult
  $Res call(
      {int artistId,
      String name,
      String? description,
      @ByteArray() Uint8List? artistPhoto,
      @ByteArray() Uint8List? songPhoto,
      int releaseYear,
      String title});
}

/// @nodoc
class _$ArtistDataCopyWithImpl<$Res, $Val extends ArtistData>
    implements $ArtistDataCopyWith<$Res> {
  _$ArtistDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artistId = null,
    Object? name = null,
    Object? description = freezed,
    Object? artistPhoto = freezed,
    Object? songPhoto = freezed,
    Object? releaseYear = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      artistId: null == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      artistPhoto: freezed == artistPhoto
          ? _value.artistPhoto
          : artistPhoto // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ArtistDataCopyWith<$Res>
    implements $ArtistDataCopyWith<$Res> {
  factory _$$_ArtistDataCopyWith(
          _$_ArtistData value, $Res Function(_$_ArtistData) then) =
      __$$_ArtistDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int artistId,
      String name,
      String? description,
      @ByteArray() Uint8List? artistPhoto,
      @ByteArray() Uint8List? songPhoto,
      int releaseYear,
      String title});
}

/// @nodoc
class __$$_ArtistDataCopyWithImpl<$Res>
    extends _$ArtistDataCopyWithImpl<$Res, _$_ArtistData>
    implements _$$_ArtistDataCopyWith<$Res> {
  __$$_ArtistDataCopyWithImpl(
      _$_ArtistData _value, $Res Function(_$_ArtistData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artistId = null,
    Object? name = null,
    Object? description = freezed,
    Object? artistPhoto = freezed,
    Object? songPhoto = freezed,
    Object? releaseYear = null,
    Object? title = null,
  }) {
    return _then(_$_ArtistData(
      artistId: null == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      artistPhoto: freezed == artistPhoto
          ? _value.artistPhoto
          : artistPhoto // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ArtistData with DiagnosticableTreeMixin implements _ArtistData {
  const _$_ArtistData(
      {required this.artistId,
      required this.name,
      required this.description,
      @ByteArray() this.artistPhoto,
      @ByteArray() this.songPhoto,
      required this.releaseYear,
      required this.title});

  factory _$_ArtistData.fromJson(Map<String, dynamic> json) =>
      _$$_ArtistDataFromJson(json);

  @override
  final int artistId;
  @override
  final String name;
  @override
  final String? description;
  @override
  @ByteArray()
  final Uint8List? artistPhoto;
  @override
  @ByteArray()
  final Uint8List? songPhoto;
  @override
  final int releaseYear;
  @override
  final String title;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ArtistData(artistId: $artistId, name: $name, description: $description, artistPhoto: $artistPhoto, songPhoto: $songPhoto, releaseYear: $releaseYear, title: $title)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ArtistData'))
      ..add(DiagnosticsProperty('artistId', artistId))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('artistPhoto', artistPhoto))
      ..add(DiagnosticsProperty('songPhoto', songPhoto))
      ..add(DiagnosticsProperty('releaseYear', releaseYear))
      ..add(DiagnosticsProperty('title', title));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ArtistData &&
            (identical(other.artistId, artistId) ||
                other.artistId == artistId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other.artistPhoto, artistPhoto) &&
            const DeepCollectionEquality().equals(other.songPhoto, songPhoto) &&
            (identical(other.releaseYear, releaseYear) ||
                other.releaseYear == releaseYear) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      artistId,
      name,
      description,
      const DeepCollectionEquality().hash(artistPhoto),
      const DeepCollectionEquality().hash(songPhoto),
      releaseYear,
      title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ArtistDataCopyWith<_$_ArtistData> get copyWith =>
      __$$_ArtistDataCopyWithImpl<_$_ArtistData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArtistDataToJson(
      this,
    );
  }
}

abstract class _ArtistData implements ArtistData {
  const factory _ArtistData(
      {required final int artistId,
      required final String name,
      required final String? description,
      @ByteArray() final Uint8List? artistPhoto,
      @ByteArray() final Uint8List? songPhoto,
      required final int releaseYear,
      required final String title}) = _$_ArtistData;

  factory _ArtistData.fromJson(Map<String, dynamic> json) =
      _$_ArtistData.fromJson;

  @override
  int get artistId;
  @override
  String get name;
  @override
  String? get description;
  @override
  @ByteArray()
  Uint8List? get artistPhoto;
  @override
  @ByteArray()
  Uint8List? get songPhoto;
  @override
  int get releaseYear;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$_ArtistDataCopyWith<_$_ArtistData> get copyWith =>
      throw _privateConstructorUsedError;
}
