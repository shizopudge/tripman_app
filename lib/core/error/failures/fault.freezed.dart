// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fault.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Fault _$FaultFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'unknown':
      return UnknownFault.fromJson(json);
    case 'serverFault':
      return ServerFault.fromJson(json);
    case 'cacheFault':
      return CacheFault.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'Fault',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$Fault {
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) unknown,
    required TResult Function(String message) serverFault,
    required TResult Function(String message) cacheFault,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? unknown,
    TResult? Function(String message)? serverFault,
    TResult? Function(String message)? cacheFault,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unknown,
    TResult Function(String message)? serverFault,
    TResult Function(String message)? cacheFault,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnknownFault value) unknown,
    required TResult Function(ServerFault value) serverFault,
    required TResult Function(CacheFault value) cacheFault,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnknownFault value)? unknown,
    TResult? Function(ServerFault value)? serverFault,
    TResult? Function(CacheFault value)? cacheFault,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknownFault value)? unknown,
    TResult Function(ServerFault value)? serverFault,
    TResult Function(CacheFault value)? cacheFault,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FaultCopyWith<Fault> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FaultCopyWith<$Res> {
  factory $FaultCopyWith(Fault value, $Res Function(Fault) then) =
      _$FaultCopyWithImpl<$Res, Fault>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$FaultCopyWithImpl<$Res, $Val extends Fault>
    implements $FaultCopyWith<$Res> {
  _$FaultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UnknownFaultCopyWith<$Res> implements $FaultCopyWith<$Res> {
  factory _$$UnknownFaultCopyWith(
          _$UnknownFault value, $Res Function(_$UnknownFault) then) =
      __$$UnknownFaultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$UnknownFaultCopyWithImpl<$Res>
    extends _$FaultCopyWithImpl<$Res, _$UnknownFault>
    implements _$$UnknownFaultCopyWith<$Res> {
  __$$UnknownFaultCopyWithImpl(
      _$UnknownFault _value, $Res Function(_$UnknownFault) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$UnknownFault(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UnknownFault implements UnknownFault {
  const _$UnknownFault(
      {this.message = 'Что-то пошло не так...', final String? $type})
      : $type = $type ?? 'unknown';

  factory _$UnknownFault.fromJson(Map<String, dynamic> json) =>
      _$$UnknownFaultFromJson(json);

  @override
  @JsonKey()
  final String message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Fault.unknown(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnknownFault &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnknownFaultCopyWith<_$UnknownFault> get copyWith =>
      __$$UnknownFaultCopyWithImpl<_$UnknownFault>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) unknown,
    required TResult Function(String message) serverFault,
    required TResult Function(String message) cacheFault,
  }) {
    return unknown(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? unknown,
    TResult? Function(String message)? serverFault,
    TResult? Function(String message)? cacheFault,
  }) {
    return unknown?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unknown,
    TResult Function(String message)? serverFault,
    TResult Function(String message)? cacheFault,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnknownFault value) unknown,
    required TResult Function(ServerFault value) serverFault,
    required TResult Function(CacheFault value) cacheFault,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnknownFault value)? unknown,
    TResult? Function(ServerFault value)? serverFault,
    TResult? Function(CacheFault value)? cacheFault,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknownFault value)? unknown,
    TResult Function(ServerFault value)? serverFault,
    TResult Function(CacheFault value)? cacheFault,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnknownFaultToJson(
      this,
    );
  }
}

abstract class UnknownFault implements Fault {
  const factory UnknownFault({final String message}) = _$UnknownFault;

  factory UnknownFault.fromJson(Map<String, dynamic> json) =
      _$UnknownFault.fromJson;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$UnknownFaultCopyWith<_$UnknownFault> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServerFaultCopyWith<$Res> implements $FaultCopyWith<$Res> {
  factory _$$ServerFaultCopyWith(
          _$ServerFault value, $Res Function(_$ServerFault) then) =
      __$$ServerFaultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ServerFaultCopyWithImpl<$Res>
    extends _$FaultCopyWithImpl<$Res, _$ServerFault>
    implements _$$ServerFaultCopyWith<$Res> {
  __$$ServerFaultCopyWithImpl(
      _$ServerFault _value, $Res Function(_$ServerFault) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ServerFault(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServerFault implements ServerFault {
  const _$ServerFault({required this.message, final String? $type})
      : $type = $type ?? 'serverFault';

  factory _$ServerFault.fromJson(Map<String, dynamic> json) =>
      _$$ServerFaultFromJson(json);

  @override
  final String message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Fault.serverFault(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerFault &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerFaultCopyWith<_$ServerFault> get copyWith =>
      __$$ServerFaultCopyWithImpl<_$ServerFault>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) unknown,
    required TResult Function(String message) serverFault,
    required TResult Function(String message) cacheFault,
  }) {
    return serverFault(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? unknown,
    TResult? Function(String message)? serverFault,
    TResult? Function(String message)? cacheFault,
  }) {
    return serverFault?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unknown,
    TResult Function(String message)? serverFault,
    TResult Function(String message)? cacheFault,
    required TResult orElse(),
  }) {
    if (serverFault != null) {
      return serverFault(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnknownFault value) unknown,
    required TResult Function(ServerFault value) serverFault,
    required TResult Function(CacheFault value) cacheFault,
  }) {
    return serverFault(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnknownFault value)? unknown,
    TResult? Function(ServerFault value)? serverFault,
    TResult? Function(CacheFault value)? cacheFault,
  }) {
    return serverFault?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknownFault value)? unknown,
    TResult Function(ServerFault value)? serverFault,
    TResult Function(CacheFault value)? cacheFault,
    required TResult orElse(),
  }) {
    if (serverFault != null) {
      return serverFault(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ServerFaultToJson(
      this,
    );
  }
}

abstract class ServerFault implements Fault {
  const factory ServerFault({required final String message}) = _$ServerFault;

  factory ServerFault.fromJson(Map<String, dynamic> json) =
      _$ServerFault.fromJson;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$ServerFaultCopyWith<_$ServerFault> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CacheFaultCopyWith<$Res> implements $FaultCopyWith<$Res> {
  factory _$$CacheFaultCopyWith(
          _$CacheFault value, $Res Function(_$CacheFault) then) =
      __$$CacheFaultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$CacheFaultCopyWithImpl<$Res>
    extends _$FaultCopyWithImpl<$Res, _$CacheFault>
    implements _$$CacheFaultCopyWith<$Res> {
  __$$CacheFaultCopyWithImpl(
      _$CacheFault _value, $Res Function(_$CacheFault) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$CacheFault(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CacheFault implements CacheFault {
  const _$CacheFault({required this.message, final String? $type})
      : $type = $type ?? 'cacheFault';

  factory _$CacheFault.fromJson(Map<String, dynamic> json) =>
      _$$CacheFaultFromJson(json);

  @override
  final String message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Fault.cacheFault(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CacheFault &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CacheFaultCopyWith<_$CacheFault> get copyWith =>
      __$$CacheFaultCopyWithImpl<_$CacheFault>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) unknown,
    required TResult Function(String message) serverFault,
    required TResult Function(String message) cacheFault,
  }) {
    return cacheFault(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? unknown,
    TResult? Function(String message)? serverFault,
    TResult? Function(String message)? cacheFault,
  }) {
    return cacheFault?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unknown,
    TResult Function(String message)? serverFault,
    TResult Function(String message)? cacheFault,
    required TResult orElse(),
  }) {
    if (cacheFault != null) {
      return cacheFault(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnknownFault value) unknown,
    required TResult Function(ServerFault value) serverFault,
    required TResult Function(CacheFault value) cacheFault,
  }) {
    return cacheFault(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnknownFault value)? unknown,
    TResult? Function(ServerFault value)? serverFault,
    TResult? Function(CacheFault value)? cacheFault,
  }) {
    return cacheFault?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknownFault value)? unknown,
    TResult Function(ServerFault value)? serverFault,
    TResult Function(CacheFault value)? cacheFault,
    required TResult orElse(),
  }) {
    if (cacheFault != null) {
      return cacheFault(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CacheFaultToJson(
      this,
    );
  }
}

abstract class CacheFault implements Fault {
  const factory CacheFault({required final String message}) = _$CacheFault;

  factory CacheFault.fromJson(Map<String, dynamic> json) =
      _$CacheFault.fromJson;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$CacheFaultCopyWith<_$CacheFault> get copyWith =>
      throw _privateConstructorUsedError;
}
