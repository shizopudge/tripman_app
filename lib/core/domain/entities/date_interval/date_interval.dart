import 'package:freezed_annotation/freezed_annotation.dart';

part 'date_interval.freezed.dart';
part 'date_interval.g.dart';

@freezed
class DateInterval with _$DateInterval {
  const factory DateInterval({
    required DateTime start,
    required DateTime end,
  }) = _DateInterval;

  factory DateInterval.fromJson(Map<String, dynamic> json) =>
      _$DateIntervalFromJson(json);
}
