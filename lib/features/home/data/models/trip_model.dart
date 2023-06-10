import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/domain/entities/date_interval/date_interval.dart';

part 'trip_model.freezed.dart';
part 'trip_model.g.dart';

@freezed
class TripModel with _$TripModel {
  const factory TripModel({
    required String id,
    required String title,
    required String description,
    required String locationName,
    required List<String> images,
    required List<DateInterval> dateIntervals,
    required int minCost,
    required int minMembersCount,
    required int maxMembersCount,
    required int distance,
  }) = _TripModel;

  factory TripModel.fromJson(Map<String, dynamic> json) =>
      _$TripModelFromJson(json);
}
