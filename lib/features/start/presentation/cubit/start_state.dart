part of 'start_cubit.dart';

@freezed
class StartState with _$StartState {
  const factory StartState.initial() = _Initial;
  const factory StartState.loaded() = _Loaded;
  const factory StartState.loading() = _Loading;
  const factory StartState.failure({required Failure failure}) = _Failure;
}
