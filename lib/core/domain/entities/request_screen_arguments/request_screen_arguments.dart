import 'package:equatable/equatable.dart';
import '../date_interval/date_interval.dart';
import '../trip/trip.dart';

class RequestScreenArguments extends Equatable {
  final Trip trip;
  final DateInterval dateInterval;

  const RequestScreenArguments({
    required this.trip,
    required this.dateInterval,
  });

  @override
  List<Object?> get props => [trip, dateInterval];
}
