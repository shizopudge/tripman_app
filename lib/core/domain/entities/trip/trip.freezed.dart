// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trip.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Trip _$TripFromJson(Map<String, dynamic> json) {
  return _Trip.fromJson(json);
}

/// @nodoc
mixin _$Trip {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get locationName => throw _privateConstructorUsedError;
  List<String> get images => throw _privateConstructorUsedError;
  List<DateInterval> get dateIntervals => throw _privateConstructorUsedError;
  int get minCost => throw _privateConstructorUsedError;
  int get minMembersCount => throw _privateConstructorUsedError;
  int get maxMembersCount => throw _privateConstructorUsedError;
  int get distance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TripCopyWith<Trip> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripCopyWith<$Res> {
  factory $TripCopyWith(Trip value, $Res Function(Trip) then) =
      _$TripCopyWithImpl<$Res, Trip>;
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      String locationName,
      List<String> images,
      List<DateInterval> dateIntervals,
      int minCost,
      int minMembersCount,
      int maxMembersCount,
      int distance});
}

/// @nodoc
class _$TripCopyWithImpl<$Res, $Val extends Trip>
    implements $TripCopyWith<$Res> {
  _$TripCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? locationName = null,
    Object? images = null,
    Object? dateIntervals = null,
    Object? minCost = null,
    Object? minMembersCount = null,
    Object? maxMembersCount = null,
    Object? distance = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      locationName: null == locationName
          ? _value.locationName
          : locationName // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      dateIntervals: null == dateIntervals
          ? _value.dateIntervals
          : dateIntervals // ignore: cast_nullable_to_non_nullable
              as List<DateInterval>,
      minCost: null == minCost
          ? _value.minCost
          : minCost // ignore: cast_nullable_to_non_nullable
              as int,
      minMembersCount: null == minMembersCount
          ? _value.minMembersCount
          : minMembersCount // ignore: cast_nullable_to_non_nullable
              as int,
      maxMembersCount: null == maxMembersCount
          ? _value.maxMembersCount
          : maxMembersCount // ignore: cast_nullable_to_non_nullable
              as int,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TripCopyWith<$Res> implements $TripCopyWith<$Res> {
  factory _$$_TripCopyWith(_$_Trip value, $Res Function(_$_Trip) then) =
      __$$_TripCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      String locationName,
      List<String> images,
      List<DateInterval> dateIntervals,
      int minCost,
      int minMembersCount,
      int maxMembersCount,
      int distance});
}

/// @nodoc
class __$$_TripCopyWithImpl<$Res> extends _$TripCopyWithImpl<$Res, _$_Trip>
    implements _$$_TripCopyWith<$Res> {
  __$$_TripCopyWithImpl(_$_Trip _value, $Res Function(_$_Trip) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? locationName = null,
    Object? images = null,
    Object? dateIntervals = null,
    Object? minCost = null,
    Object? minMembersCount = null,
    Object? maxMembersCount = null,
    Object? distance = null,
  }) {
    return _then(_$_Trip(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      locationName: null == locationName
          ? _value.locationName
          : locationName // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      dateIntervals: null == dateIntervals
          ? _value._dateIntervals
          : dateIntervals // ignore: cast_nullable_to_non_nullable
              as List<DateInterval>,
      minCost: null == minCost
          ? _value.minCost
          : minCost // ignore: cast_nullable_to_non_nullable
              as int,
      minMembersCount: null == minMembersCount
          ? _value.minMembersCount
          : minMembersCount // ignore: cast_nullable_to_non_nullable
              as int,
      maxMembersCount: null == maxMembersCount
          ? _value.maxMembersCount
          : maxMembersCount // ignore: cast_nullable_to_non_nullable
              as int,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Trip implements _Trip {
  const _$_Trip(
      {required this.id,
      required this.title,
      required this.description,
      required this.locationName,
      required final List<String> images,
      required final List<DateInterval> dateIntervals,
      required this.minCost,
      required this.minMembersCount,
      required this.maxMembersCount,
      required this.distance})
      : _images = images,
        _dateIntervals = dateIntervals;

  factory _$_Trip.fromJson(Map<String, dynamic> json) => _$$_TripFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final String locationName;
  final List<String> _images;
  @override
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  final List<DateInterval> _dateIntervals;
  @override
  List<DateInterval> get dateIntervals {
    if (_dateIntervals is EqualUnmodifiableListView) return _dateIntervals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dateIntervals);
  }

  @override
  final int minCost;
  @override
  final int minMembersCount;
  @override
  final int maxMembersCount;
  @override
  final int distance;

  @override
  String toString() {
    return 'Trip(id: $id, title: $title, description: $description, locationName: $locationName, images: $images, dateIntervals: $dateIntervals, minCost: $minCost, minMembersCount: $minMembersCount, maxMembersCount: $maxMembersCount, distance: $distance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Trip &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.locationName, locationName) ||
                other.locationName == locationName) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality()
                .equals(other._dateIntervals, _dateIntervals) &&
            (identical(other.minCost, minCost) || other.minCost == minCost) &&
            (identical(other.minMembersCount, minMembersCount) ||
                other.minMembersCount == minMembersCount) &&
            (identical(other.maxMembersCount, maxMembersCount) ||
                other.maxMembersCount == maxMembersCount) &&
            (identical(other.distance, distance) ||
                other.distance == distance));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      description,
      locationName,
      const DeepCollectionEquality().hash(_images),
      const DeepCollectionEquality().hash(_dateIntervals),
      minCost,
      minMembersCount,
      maxMembersCount,
      distance);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TripCopyWith<_$_Trip> get copyWith =>
      __$$_TripCopyWithImpl<_$_Trip>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TripToJson(
      this,
    );
  }
}

abstract class _Trip implements Trip {
  const factory _Trip(
      {required final String id,
      required final String title,
      required final String description,
      required final String locationName,
      required final List<String> images,
      required final List<DateInterval> dateIntervals,
      required final int minCost,
      required final int minMembersCount,
      required final int maxMembersCount,
      required final int distance}) = _$_Trip;

  factory _Trip.fromJson(Map<String, dynamic> json) = _$_Trip.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  String get locationName;
  @override
  List<String> get images;
  @override
  List<DateInterval> get dateIntervals;
  @override
  int get minCost;
  @override
  int get minMembersCount;
  @override
  int get maxMembersCount;
  @override
  int get distance;
  @override
  @JsonKey(ignore: true)
  _$$_TripCopyWith<_$_Trip> get copyWith => throw _privateConstructorUsedError;
}
