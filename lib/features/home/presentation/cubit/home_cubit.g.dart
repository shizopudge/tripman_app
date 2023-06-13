// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Loading _$$_LoadingFromJson(Map<String, dynamic> json) => _$_Loading(
      selectedTripType: json['selectedTripType'] == null
          ? AppConstantData.defaultTripType
          : TripType.fromJson(json['selectedTripType'] as Map<String, dynamic>),
      selectedDateInterval: json['selectedDateInterval'] == null
          ? null
          : DateInterval.fromJson(
              json['selectedDateInterval'] as Map<String, dynamic>),
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
      'selectedTripType': instance.selectedTripType,
      'selectedDateInterval': instance.selectedDateInterval,
      'isMenuOpened': instance.isMenuOpened,
      'isRefreshing': instance.isRefreshing,
      'trips': instance.trips,
      'runtimeType': instance.$type,
    };

_$_Success _$$_SuccessFromJson(Map<String, dynamic> json) => _$_Success(
      selectedTripType:
          TripType.fromJson(json['selectedTripType'] as Map<String, dynamic>),
      selectedDateInterval: json['selectedDateInterval'] == null
          ? null
          : DateInterval.fromJson(
              json['selectedDateInterval'] as Map<String, dynamic>),
      isMenuOpened: json['isMenuOpened'] as bool,
      trips: (json['trips'] as List<dynamic>)
          .map((e) => Trip.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_SuccessToJson(_$_Success instance) =>
    <String, dynamic>{
      'selectedTripType': instance.selectedTripType,
      'selectedDateInterval': instance.selectedDateInterval,
      'isMenuOpened': instance.isMenuOpened,
      'trips': instance.trips,
      'runtimeType': instance.$type,
    };

_$Failure _$$FailureFromJson(Map<String, dynamic> json) => _$Failure(
      selectedTripType:
          TripType.fromJson(json['selectedTripType'] as Map<String, dynamic>),
      selectedDateInterval: json['selectedDateInterval'] == null
          ? null
          : DateInterval.fromJson(
              json['selectedDateInterval'] as Map<String, dynamic>),
      isMenuOpened: json['isMenuOpened'] as bool,
      fault: Fault.fromJson(json['fault'] as Map<String, dynamic>),
      trips: (json['trips'] as List<dynamic>?)
              ?.map((e) => Trip.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$FailureToJson(_$Failure instance) => <String, dynamic>{
      'selectedTripType': instance.selectedTripType,
      'selectedDateInterval': instance.selectedDateInterval,
      'isMenuOpened': instance.isMenuOpened,
      'fault': instance.fault,
      'trips': instance.trips,
      'runtimeType': instance.$type,
    };
