// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'date_interval.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DateInterval _$$_DateIntervalFromJson(Map<String, dynamic> json) =>
    _$_DateInterval(
      start: DateTime.parse(json['start'] as String),
      end: DateTime.parse(json['end'] as String),
    );

Map<String, dynamic> _$$_DateIntervalToJson(_$_DateInterval instance) =>
    <String, dynamic>{
      'start': instance.start.toIso8601String(),
      'end': instance.end.toIso8601String(),
    };
