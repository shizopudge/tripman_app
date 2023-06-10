// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Loading _$$_LoadingFromJson(Map<String, dynamic> json) => _$_Loading(
      tripType: json['tripType'] == null
          ? LocalConstants.defaultTripType
          : TripType.fromJson(json['tripType'] as Map<String, dynamic>),
      dateInterval: json['dateInterval'] == null
          ? null
          : DateInterval.fromJson(json['dateInterval'] as Map<String, dynamic>),
      isMenuOpened: json['isMenuOpened'] as bool? ?? false,
      isRefreshing: json['isRefreshing'] as bool? ?? false,
      trips: (json['trips'] as List<dynamic>?)
              ?.map((e) => Trip.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_LoadingToJson(_$_Loading instance) =>
    <String, dynamic>{
      'tripType': instance.tripType,
      'dateInterval': instance.dateInterval,
      'isMenuOpened': instance.isMenuOpened,
      'isRefreshing': instance.isRefreshing,
      'trips': instance.trips,
      'runtimeType': instance.$type,
    };

_$_Success _$$_SuccessFromJson(Map<String, dynamic> json) => _$_Success(
      tripType: TripType.fromJson(json['tripType'] as Map<String, dynamic>),
      dateInterval: json['dateInterval'] == null
          ? null
          : DateInterval.fromJson(json['dateInterval'] as Map<String, dynamic>),
      isMenuOpened: json['isMenuOpened'] as bool,
      trips: (json['trips'] as List<dynamic>)
          .map((e) => Trip.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_SuccessToJson(_$_Success instance) =>
    <String, dynamic>{
      'tripType': instance.tripType,
      'dateInterval': instance.dateInterval,
      'isMenuOpened': instance.isMenuOpened,
      'trips': instance.trips,
      'runtimeType': instance.$type,
    };

_$_Failure _$$_FailureFromJson(Map<String, dynamic> json) => _$_Failure(
      tripType: TripType.fromJson(json['tripType'] as Map<String, dynamic>),
      dateInterval: json['dateInterval'] == null
          ? null
          : DateInterval.fromJson(json['dateInterval'] as Map<String, dynamic>),
      isMenuOpened: json['isMenuOpened'] as bool,
      failure: Failure.fromJson(json['failure'] as Map<String, dynamic>),
      trips: (json['trips'] as List<dynamic>?)
              ?.map((e) => Trip.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_FailureToJson(_$_Failure instance) =>
    <String, dynamic>{
      'tripType': instance.tripType,
      'dateInterval': instance.dateInterval,
      'isMenuOpened': instance.isMenuOpened,
      'failure': instance.failure,
      'trips': instance.trips,
      'runtimeType': instance.$type,
    };
