import '../../../../core/constants/type_defs.dart';
import '../../../../core/domain/entities/date_interval/date_interval.dart';
import '../../../../core/domain/entities/trip/trip.dart';

abstract interface class HomeRepository {
  FutureEither<List<Trip>> fetchTrips({
    String? type,
    DateInterval? dateInterval,
  });
}
