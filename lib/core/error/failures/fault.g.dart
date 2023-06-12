// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fault.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UnknownFault _$$UnknownFaultFromJson(Map<String, dynamic> json) =>
    _$UnknownFault(
      message: json['message'] as String? ?? 'Что-то пошло не так...',
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UnknownFaultToJson(_$UnknownFault instance) =>
    <String, dynamic>{
      'message': instance.message,
      'runtimeType': instance.$type,
    };

_$ServerFault _$$ServerFaultFromJson(Map<String, dynamic> json) =>
    _$ServerFault(
      message: json['message'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ServerFaultToJson(_$ServerFault instance) =>
    <String, dynamic>{
      'message': instance.message,
      'runtimeType': instance.$type,
    };

_$CacheFault _$$CacheFaultFromJson(Map<String, dynamic> json) => _$CacheFault(
      message: json['message'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$CacheFaultToJson(_$CacheFault instance) =>
    <String, dynamic>{
      'message': instance.message,
      'runtimeType': instance.$type,
    };
