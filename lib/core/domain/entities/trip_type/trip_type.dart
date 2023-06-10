import 'package:freezed_annotation/freezed_annotation.dart';

part 'trip_type.freezed.dart';
part 'trip_type.g.dart';

@freezed
class TripType with _$TripType {
  const factory TripType({
    required String title,
    required String image,
  }) = _TripType;

  factory TripType.fromJson(Map<String, dynamic> json) =>
      _$TripTypeFromJson(json);
}
