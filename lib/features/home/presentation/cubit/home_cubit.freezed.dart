// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HomeState _$HomeStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'loading':
      return _Loading.fromJson(json);
    case 'success':
      return _Success.fromJson(json);
    case 'failure':
      return _Failure.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'HomeState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$HomeState {
  TripType get selectedTripType => throw _privateConstructorUsedError;
  DateInterval? get selectedDateInterval => throw _privateConstructorUsedError;
  bool get isMenuOpened => throw _privateConstructorUsedError;
  List<Trip> get trips => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            TripType selectedTripType,
            DateInterval? selectedDateInterval,
            bool isMenuOpened,
            bool isRefreshing,
            List<Trip> trips)
        loading,
    required TResult Function(
            TripType selectedTripType,
            DateInterval? selectedDateInterval,
            bool isMenuOpened,
            List<Trip> trips)
        success,
    required TResult Function(
            TripType selectedTripType,
            DateInterval? selectedDateInterval,
            bool isMenuOpened,
            Fault fault,
            List<Trip> trips)
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            TripType selectedTripType,
            DateInterval? selectedDateInterval,
            bool isMenuOpened,
            bool isRefreshing,
            List<Trip> trips)?
        loading,
    TResult? Function(
            TripType selectedTripType,
            DateInterval? selectedDateInterval,
            bool isMenuOpened,
            List<Trip> trips)?
        success,
    TResult? Function(
            TripType selectedTripType,
            DateInterval? selectedDateInterval,
            bool isMenuOpened,
            Fault fault,
            List<Trip> trips)?
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            TripType selectedTripType,
            DateInterval? selectedDateInterval,
            bool isMenuOpened,
            bool isRefreshing,
            List<Trip> trips)?
        loading,
    TResult Function(
            TripType selectedTripType,
            DateInterval? selectedDateInterval,
            bool isMenuOpened,
            List<Trip> trips)?
        success,
    TResult Function(
            TripType selectedTripType,
            DateInterval? selectedDateInterval,
            bool isMenuOpened,
            Fault fault,
            List<Trip> trips)?
        failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {TripType selectedTripType,
      DateInterval? selectedDateInterval,
      bool isMenuOpened,
      List<Trip> trips});

  $TripTypeCopyWith<$Res> get selectedTripType;
  $DateIntervalCopyWith<$Res>? get selectedDateInterval;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedTripType = null,
    Object? selectedDateInterval = freezed,
    Object? isMenuOpened = null,
    Object? trips = null,
  }) {
    return _then(_value.copyWith(
      selectedTripType: null == selectedTripType
          ? _value.selectedTripType
          : selectedTripType // ignore: cast_nullable_to_non_nullable
              as TripType,
      selectedDateInterval: freezed == selectedDateInterval
          ? _value.selectedDateInterval
          : selectedDateInterval // ignore: cast_nullable_to_non_nullable
              as DateInterval?,
      isMenuOpened: null == isMenuOpened
          ? _value.isMenuOpened
          : isMenuOpened // ignore: cast_nullable_to_non_nullable
              as bool,
      trips: null == trips
          ? _value.trips
          : trips // ignore: cast_nullable_to_non_nullable
              as List<Trip>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TripTypeCopyWith<$Res> get selectedTripType {
    return $TripTypeCopyWith<$Res>(_value.selectedTripType, (value) {
      return _then(_value.copyWith(selectedTripType: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DateIntervalCopyWith<$Res>? get selectedDateInterval {
    if (_value.selectedDateInterval == null) {
      return null;
    }

    return $DateIntervalCopyWith<$Res>(_value.selectedDateInterval!, (value) {
      return _then(_value.copyWith(selectedDateInterval: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TripType selectedTripType,
      DateInterval? selectedDateInterval,
      bool isMenuOpened,
      bool isRefreshing,
      List<Trip> trips});

  @override
  $TripTypeCopyWith<$Res> get selectedTripType;
  @override
  $DateIntervalCopyWith<$Res>? get selectedDateInterval;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedTripType = null,
    Object? selectedDateInterval = freezed,
    Object? isMenuOpened = null,
    Object? isRefreshing = null,
    Object? trips = null,
  }) {
    return _then(_$_Loading(
      selectedTripType: null == selectedTripType
          ? _value.selectedTripType
          : selectedTripType // ignore: cast_nullable_to_non_nullable
              as TripType,
      selectedDateInterval: freezed == selectedDateInterval
          ? _value.selectedDateInterval
          : selectedDateInterval // ignore: cast_nullable_to_non_nullable
              as DateInterval?,
      isMenuOpened: null == isMenuOpened
          ? _value.isMenuOpened
          : isMenuOpened // ignore: cast_nullable_to_non_nullable
              as bool,
      isRefreshing: null == isRefreshing
          ? _value.isRefreshing
          : isRefreshing // ignore: cast_nullable_to_non_nullable
              as bool,
      trips: null == trips
          ? _value._trips
          : trips // ignore: cast_nullable_to_non_nullable
              as List<Trip>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Loading extends _Loading {
  const _$_Loading(
      {this.selectedTripType = LocalConstants.defaultTripType,
      this.selectedDateInterval = null,
      this.isMenuOpened = false,
      this.isRefreshing = false,
      final List<Trip> trips = const [],
      final String? $type})
      : _trips = trips,
        $type = $type ?? 'loading',
        super._();

  factory _$_Loading.fromJson(Map<String, dynamic> json) =>
      _$$_LoadingFromJson(json);

  @override
  @JsonKey()
  final TripType selectedTripType;
  @override
  @JsonKey()
  final DateInterval? selectedDateInterval;
  @override
  @JsonKey()
  final bool isMenuOpened;
  @override
  @JsonKey()
  final bool isRefreshing;
  final List<Trip> _trips;
  @override
  @JsonKey()
  List<Trip> get trips {
    if (_trips is EqualUnmodifiableListView) return _trips;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trips);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loading &&
            (identical(other.selectedTripType, selectedTripType) ||
                other.selectedTripType == selectedTripType) &&
            (identical(other.selectedDateInterval, selectedDateInterval) ||
                other.selectedDateInterval == selectedDateInterval) &&
            (identical(other.isMenuOpened, isMenuOpened) ||
                other.isMenuOpened == isMenuOpened) &&
            (identical(other.isRefreshing, isRefreshing) ||
                other.isRefreshing == isRefreshing) &&
            const DeepCollectionEquality().equals(other._trips, _trips));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      selectedTripType,
      selectedDateInterval,
      isMenuOpened,
      isRefreshing,
      const DeepCollectionEquality().hash(_trips));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      __$$_LoadingCopyWithImpl<_$_Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            TripType selectedTripType,
            DateInterval? selectedDateInterval,
            bool isMenuOpened,
            bool isRefreshing,
            List<Trip> trips)
        loading,
    required TResult Function(
            TripType selectedTripType,
            DateInterval? selectedDateInterval,
            bool isMenuOpened,
            List<Trip> trips)
        success,
    required TResult Function(
            TripType selectedTripType,
            DateInterval? selectedDateInterval,
            bool isMenuOpened,
            Fault fault,
            List<Trip> trips)
        failure,
  }) {
    return loading(selectedTripType, selectedDateInterval, isMenuOpened,
        isRefreshing, trips);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            TripType selectedTripType,
            DateInterval? selectedDateInterval,
            bool isMenuOpened,
            bool isRefreshing,
            List<Trip> trips)?
        loading,
    TResult? Function(
            TripType selectedTripType,
            DateInterval? selectedDateInterval,
            bool isMenuOpened,
            List<Trip> trips)?
        success,
    TResult? Function(
            TripType selectedTripType,
            DateInterval? selectedDateInterval,
            bool isMenuOpened,
            Fault fault,
            List<Trip> trips)?
        failure,
  }) {
    return loading?.call(selectedTripType, selectedDateInterval, isMenuOpened,
        isRefreshing, trips);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            TripType selectedTripType,
            DateInterval? selectedDateInterval,
            bool isMenuOpened,
            bool isRefreshing,
            List<Trip> trips)?
        loading,
    TResult Function(
            TripType selectedTripType,
            DateInterval? selectedDateInterval,
            bool isMenuOpened,
            List<Trip> trips)?
        success,
    TResult Function(
            TripType selectedTripType,
            DateInterval? selectedDateInterval,
            bool isMenuOpened,
            Fault fault,
            List<Trip> trips)?
        failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(selectedTripType, selectedDateInterval, isMenuOpened,
          isRefreshing, trips);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoadingToJson(
      this,
    );
  }
}

abstract class _Loading extends HomeState {
  const factory _Loading(
      {final TripType selectedTripType,
      final DateInterval? selectedDateInterval,
      final bool isMenuOpened,
      final bool isRefreshing,
      final List<Trip> trips}) = _$_Loading;
  const _Loading._() : super._();

  factory _Loading.fromJson(Map<String, dynamic> json) = _$_Loading.fromJson;

  @override
  TripType get selectedTripType;
  @override
  DateInterval? get selectedDateInterval;
  @override
  bool get isMenuOpened;
  bool get isRefreshing;
  @override
  List<Trip> get trips;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_SuccessCopyWith(
          _$_Success value, $Res Function(_$_Success) then) =
      __$$_SuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TripType selectedTripType,
      DateInterval? selectedDateInterval,
      bool isMenuOpened,
      List<Trip> trips});

  @override
  $TripTypeCopyWith<$Res> get selectedTripType;
  @override
  $DateIntervalCopyWith<$Res>? get selectedDateInterval;
}

/// @nodoc
class __$$_SuccessCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_Success>
    implements _$$_SuccessCopyWith<$Res> {
  __$$_SuccessCopyWithImpl(_$_Success _value, $Res Function(_$_Success) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedTripType = null,
    Object? selectedDateInterval = freezed,
    Object? isMenuOpened = null,
    Object? trips = null,
  }) {
    return _then(_$_Success(
      selectedTripType: null == selectedTripType
          ? _value.selectedTripType
          : selectedTripType // ignore: cast_nullable_to_non_nullable
              as TripType,
      selectedDateInterval: freezed == selectedDateInterval
          ? _value.selectedDateInterval
          : selectedDateInterval // ignore: cast_nullable_to_non_nullable
              as DateInterval?,
      isMenuOpened: null == isMenuOpened
          ? _value.isMenuOpened
          : isMenuOpened // ignore: cast_nullable_to_non_nullable
              as bool,
      trips: null == trips
          ? _value._trips
          : trips // ignore: cast_nullable_to_non_nullable
              as List<Trip>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Success extends _Success {
  const _$_Success(
      {required this.selectedTripType,
      required this.selectedDateInterval,
      required this.isMenuOpened,
      required final List<Trip> trips,
      final String? $type})
      : _trips = trips,
        $type = $type ?? 'success',
        super._();

  factory _$_Success.fromJson(Map<String, dynamic> json) =>
      _$$_SuccessFromJson(json);

  @override
  final TripType selectedTripType;
  @override
  final DateInterval? selectedDateInterval;
  @override
  final bool isMenuOpened;
  final List<Trip> _trips;
  @override
  List<Trip> get trips {
    if (_trips is EqualUnmodifiableListView) return _trips;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trips);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Success &&
            (identical(other.selectedTripType, selectedTripType) ||
                other.selectedTripType == selectedTripType) &&
            (identical(other.selectedDateInterval, selectedDateInterval) ||
                other.selectedDateInterval == selectedDateInterval) &&
            (identical(other.isMenuOpened, isMenuOpened) ||
                other.isMenuOpened == isMenuOpened) &&
            const DeepCollectionEquality().equals(other._trips, _trips));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      selectedTripType,
      selectedDateInterval,
      isMenuOpened,
      const DeepCollectionEquality().hash(_trips));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      __$$_SuccessCopyWithImpl<_$_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            TripType selectedTripType,
            DateInterval? selectedDateInterval,
            bool isMenuOpened,
            bool isRefreshing,
            List<Trip> trips)
        loading,
    required TResult Function(
            TripType selectedTripType,
            DateInterval? selectedDateInterval,
            bool isMenuOpened,
            List<Trip> trips)
        success,
    required TResult Function(
            TripType selectedTripType,
            DateInterval? selectedDateInterval,
            bool isMenuOpened,
            Fault fault,
            List<Trip> trips)
        failure,
  }) {
    return success(selectedTripType, selectedDateInterval, isMenuOpened, trips);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            TripType selectedTripType,
            DateInterval? selectedDateInterval,
            bool isMenuOpened,
            bool isRefreshing,
            List<Trip> trips)?
        loading,
    TResult? Function(
            TripType selectedTripType,
            DateInterval? selectedDateInterval,
            bool isMenuOpened,
            List<Trip> trips)?
        success,
    TResult? Function(
            TripType selectedTripType,
            DateInterval? selectedDateInterval,
            bool isMenuOpened,
            Fault fault,
            List<Trip> trips)?
        failure,
  }) {
    return success?.call(
        selectedTripType, selectedDateInterval, isMenuOpened, trips);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            TripType selectedTripType,
            DateInterval? selectedDateInterval,
            bool isMenuOpened,
            bool isRefreshing,
            List<Trip> trips)?
        loading,
    TResult Function(
            TripType selectedTripType,
            DateInterval? selectedDateInterval,
            bool isMenuOpened,
            List<Trip> trips)?
        success,
    TResult Function(
            TripType selectedTripType,
            DateInterval? selectedDateInterval,
            bool isMenuOpened,
            Fault fault,
            List<Trip> trips)?
        failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(
          selectedTripType, selectedDateInterval, isMenuOpened, trips);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_SuccessToJson(
      this,
    );
  }
}

abstract class _Success extends HomeState {
  const factory _Success(
      {required final TripType selectedTripType,
      required final DateInterval? selectedDateInterval,
      required final bool isMenuOpened,
      required final List<Trip> trips}) = _$_Success;
  const _Success._() : super._();

  factory _Success.fromJson(Map<String, dynamic> json) = _$_Success.fromJson;

  @override
  TripType get selectedTripType;
  @override
  DateInterval? get selectedDateInterval;
  @override
  bool get isMenuOpened;
  @override
  List<Trip> get trips;
  @override
  @JsonKey(ignore: true)
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailureCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_FailureCopyWith(
          _$_Failure value, $Res Function(_$_Failure) then) =
      __$$_FailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TripType selectedTripType,
      DateInterval? selectedDateInterval,
      bool isMenuOpened,
      Fault fault,
      List<Trip> trips});

  @override
  $TripTypeCopyWith<$Res> get selectedTripType;
  @override
  $DateIntervalCopyWith<$Res>? get selectedDateInterval;
  $FaultCopyWith<$Res> get fault;
}

/// @nodoc
class __$$_FailureCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_Failure>
    implements _$$_FailureCopyWith<$Res> {
  __$$_FailureCopyWithImpl(_$_Failure _value, $Res Function(_$_Failure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedTripType = null,
    Object? selectedDateInterval = freezed,
    Object? isMenuOpened = null,
    Object? fault = null,
    Object? trips = null,
  }) {
    return _then(_$_Failure(
      selectedTripType: null == selectedTripType
          ? _value.selectedTripType
          : selectedTripType // ignore: cast_nullable_to_non_nullable
              as TripType,
      selectedDateInterval: freezed == selectedDateInterval
          ? _value.selectedDateInterval
          : selectedDateInterval // ignore: cast_nullable_to_non_nullable
              as DateInterval?,
      isMenuOpened: null == isMenuOpened
          ? _value.isMenuOpened
          : isMenuOpened // ignore: cast_nullable_to_non_nullable
              as bool,
      fault: null == fault
          ? _value.fault
          : fault // ignore: cast_nullable_to_non_nullable
              as Fault,
      trips: null == trips
          ? _value._trips
          : trips // ignore: cast_nullable_to_non_nullable
              as List<Trip>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FaultCopyWith<$Res> get fault {
    return $FaultCopyWith<$Res>(_value.fault, (value) {
      return _then(_value.copyWith(fault: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$_Failure extends _Failure {
  const _$_Failure(
      {required this.selectedTripType,
      required this.selectedDateInterval,
      required this.isMenuOpened,
      required this.fault,
      final List<Trip> trips = const [],
      final String? $type})
      : _trips = trips,
        $type = $type ?? 'failure',
        super._();

  factory _$_Failure.fromJson(Map<String, dynamic> json) =>
      _$$_FailureFromJson(json);

  @override
  final TripType selectedTripType;
  @override
  final DateInterval? selectedDateInterval;
  @override
  final bool isMenuOpened;
  @override
  final Fault fault;
  final List<Trip> _trips;
  @override
  @JsonKey()
  List<Trip> get trips {
    if (_trips is EqualUnmodifiableListView) return _trips;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trips);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Failure &&
            (identical(other.selectedTripType, selectedTripType) ||
                other.selectedTripType == selectedTripType) &&
            (identical(other.selectedDateInterval, selectedDateInterval) ||
                other.selectedDateInterval == selectedDateInterval) &&
            (identical(other.isMenuOpened, isMenuOpened) ||
                other.isMenuOpened == isMenuOpened) &&
            (identical(other.fault, fault) || other.fault == fault) &&
            const DeepCollectionEquality().equals(other._trips, _trips));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      selectedTripType,
      selectedDateInterval,
      isMenuOpened,
      fault,
      const DeepCollectionEquality().hash(_trips));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      __$$_FailureCopyWithImpl<_$_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            TripType selectedTripType,
            DateInterval? selectedDateInterval,
            bool isMenuOpened,
            bool isRefreshing,
            List<Trip> trips)
        loading,
    required TResult Function(
            TripType selectedTripType,
            DateInterval? selectedDateInterval,
            bool isMenuOpened,
            List<Trip> trips)
        success,
    required TResult Function(
            TripType selectedTripType,
            DateInterval? selectedDateInterval,
            bool isMenuOpened,
            Fault fault,
            List<Trip> trips)
        failure,
  }) {
    return failure(
        selectedTripType, selectedDateInterval, isMenuOpened, fault, trips);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            TripType selectedTripType,
            DateInterval? selectedDateInterval,
            bool isMenuOpened,
            bool isRefreshing,
            List<Trip> trips)?
        loading,
    TResult? Function(
            TripType selectedTripType,
            DateInterval? selectedDateInterval,
            bool isMenuOpened,
            List<Trip> trips)?
        success,
    TResult? Function(
            TripType selectedTripType,
            DateInterval? selectedDateInterval,
            bool isMenuOpened,
            Fault fault,
            List<Trip> trips)?
        failure,
  }) {
    return failure?.call(
        selectedTripType, selectedDateInterval, isMenuOpened, fault, trips);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            TripType selectedTripType,
            DateInterval? selectedDateInterval,
            bool isMenuOpened,
            bool isRefreshing,
            List<Trip> trips)?
        loading,
    TResult Function(
            TripType selectedTripType,
            DateInterval? selectedDateInterval,
            bool isMenuOpened,
            List<Trip> trips)?
        success,
    TResult Function(
            TripType selectedTripType,
            DateInterval? selectedDateInterval,
            bool isMenuOpened,
            Fault fault,
            List<Trip> trips)?
        failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(
          selectedTripType, selectedDateInterval, isMenuOpened, fault, trips);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_FailureToJson(
      this,
    );
  }
}

abstract class _Failure extends HomeState {
  const factory _Failure(
      {required final TripType selectedTripType,
      required final DateInterval? selectedDateInterval,
      required final bool isMenuOpened,
      required final Fault fault,
      final List<Trip> trips}) = _$_Failure;
  const _Failure._() : super._();

  factory _Failure.fromJson(Map<String, dynamic> json) = _$_Failure.fromJson;

  @override
  TripType get selectedTripType;
  @override
  DateInterval? get selectedDateInterval;
  @override
  bool get isMenuOpened;
  Fault get fault;
  @override
  List<Trip> get trips;
  @override
  @JsonKey(ignore: true)
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}
