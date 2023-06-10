import '../../../../core/constants/type_defs.dart';
import '../../../../core/domain/entities/date_interval/date_interval.dart';
import '../entities/trip.dart';

abstract interface class TripRepository {
  FutureEither<List<Trip>> fetchTrips({
    String? type,
    DateInterval? interval,
  });
}
