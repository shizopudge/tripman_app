import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';
part 'failures.g.dart';

@freezed
class Failure with _$Failure {
  const factory Failure.serverFailure({
    required String message,
  }) = ServerFailure;

  const factory Failure.cacheFailure({
    required String message,
  }) = CacheFailure;

  factory Failure.fromJson(Map<String, dynamic> json) =>
      _$FailureFromJson(json);
}
