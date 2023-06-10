// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TripModel _$$_TripModelFromJson(Map<String, dynamic> json) => _$_TripModel(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      locationName: json['locationName'] as String,
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
      dateIntervals: (json['dateIntervals'] as List<dynamic>)
          .map((e) => DateInterval.fromJson(e as Map<String, dynamic>))
          .toList(),
      minCost: json['minCost'] as int,
      minMembersCount: json['minMembersCount'] as int,
      maxMembersCount: json['maxMembersCount'] as int,
      distance: json['distance'] as int,
    );

Map<String, dynamic> _$$_TripModelToJson(_$_TripModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'locationName': instance.locationName,
      'images': instance.images,
      'dateIntervals': instance.dateIntervals,
      'minCost': instance.minCost,
      'minMembersCount': instance.minMembersCount,
      'maxMembersCount': instance.maxMembersCount,
      'distance': instance.distance,
    };
