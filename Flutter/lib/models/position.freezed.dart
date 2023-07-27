// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'position.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Position _$PositionFromJson(Map<String, dynamic> json) {
  return _Position.fromJson(json);
}

/// @nodoc
mixin _$Position {
  int get year => throw _privateConstructorUsedError;
  Song get song => throw _privateConstructorUsedError;
  int get place => throw _privateConstructorUsedError;
  int? get oldPlace => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PositionCopyWith<Position> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PositionCopyWith<$Res> {
  factory $PositionCopyWith(Position value, $Res Function(Position) then) =
      _$PositionCopyWithImpl<$Res, Position>;
  @useResult
  $Res call({int year, Song song, int place, int? oldPlace});

  $SongCopyWith<$Res> get song;
}

/// @nodoc
class _$PositionCopyWithImpl<$Res, $Val extends Position>
    implements $PositionCopyWith<$Res> {
  _$PositionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? year = null,
    Object? song = null,
    Object? place = null,
    Object? oldPlace = freezed,
  }) {
    return _then(_value.copyWith(
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      song: null == song
          ? _value.song
          : song // ignore: cast_nullable_to_non_nullable
              as Song,
      place: null == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as int,
      oldPlace: freezed == oldPlace
          ? _value.oldPlace
          : oldPlace // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SongCopyWith<$Res> get song {
    return $SongCopyWith<$Res>(_value.song, (value) {
      return _then(_value.copyWith(song: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PositionCopyWith<$Res> implements $PositionCopyWith<$Res> {
  factory _$$_PositionCopyWith(
          _$_Position value, $Res Function(_$_Position) then) =
      __$$_PositionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int year, Song song, int place, int? oldPlace});

  @override
  $SongCopyWith<$Res> get song;
}

/// @nodoc
class __$$_PositionCopyWithImpl<$Res>
    extends _$PositionCopyWithImpl<$Res, _$_Position>
    implements _$$_PositionCopyWith<$Res> {
  __$$_PositionCopyWithImpl(
      _$_Position _value, $Res Function(_$_Position) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? year = null,
    Object? song = null,
    Object? place = null,
    Object? oldPlace = freezed,
  }) {
    return _then(_$_Position(
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      song: null == song
          ? _value.song
          : song // ignore: cast_nullable_to_non_nullable
              as Song,
      place: null == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as int,
      oldPlace: freezed == oldPlace
          ? _value.oldPlace
          : oldPlace // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Position with DiagnosticableTreeMixin implements _Position {
  const _$_Position(
      {required this.year,
      required this.song,
      required this.place,
      this.oldPlace});

  factory _$_Position.fromJson(Map<String, dynamic> json) =>
      _$$_PositionFromJson(json);

  @override
  final int year;
  @override
  final Song song;
  @override
  final int place;
  @override
  final int? oldPlace;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Position(year: $year, song: $song, place: $place, oldPlace: $oldPlace)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Position'))
      ..add(DiagnosticsProperty('year', year))
      ..add(DiagnosticsProperty('song', song))
      ..add(DiagnosticsProperty('place', place))
      ..add(DiagnosticsProperty('oldPlace', oldPlace));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Position &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.song, song) || other.song == song) &&
            (identical(other.place, place) || other.place == place) &&
            (identical(other.oldPlace, oldPlace) ||
                other.oldPlace == oldPlace));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, year, song, place, oldPlace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PositionCopyWith<_$_Position> get copyWith =>
      __$$_PositionCopyWithImpl<_$_Position>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PositionToJson(
      this,
    );
  }
}

abstract class _Position implements Position {
  const factory _Position(
      {required final int year,
      required final Song song,
      required final int place,
      final int? oldPlace}) = _$_Position;

  factory _Position.fromJson(Map<String, dynamic> json) = _$_Position.fromJson;

  @override
  int get year;
  @override
  Song get song;
  @override
  int get place;
  @override
  int? get oldPlace;
  @override
  @JsonKey(ignore: true)
  _$$_PositionCopyWith<_$_Position> get copyWith =>
      throw _privateConstructorUsedError;
}
