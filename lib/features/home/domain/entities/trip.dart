import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/domain/entities/date_interval/date_interval.dart';
import '../../data/models/trip_model.dart';

part 'trip.freezed.dart';
part 'trip.g.dart';

@freezed
class Trip with _$Trip {
  const factory Trip({
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
  }) = _Trip;

  factory Trip.fromJson(Map<String, dynamic> json) => _$TripFromJson(json);

  factory Trip.fromModel(TripModel model) => Trip(
        id: model.id,
        title: model.title,
        description: model.description,
        locationName: model.locationName,
        images: model.images,
        dateIntervals: model.dateIntervals,
        minCost: model.minCost,
        minMembersCount: model.minMembersCount,
        maxMembersCount: model.maxMembersCount,
        distance: model.distance,
      );
}
