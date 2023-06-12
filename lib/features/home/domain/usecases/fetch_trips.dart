import 'package:equatable/equatable.dart';

import '../../../../core/constants/type_defs.dart';
import '../../../../core/domain/entities/date_interval/date_interval.dart';
import '../../../../core/domain/entities/trip/trip.dart';
import '../../../../core/domain/usecases/usecase.dart';
import '../repositories/home_repository.dart';

class FetchTrips implements UseCase<List<Trip>, FetchTripsParams> {
  final HomeRepository repository;

  FetchTrips(this.repository);

  @override
  FutureEither<List<Trip>> call(FetchTripsParams params) async {
    return await repository.fetchTrips(
      type: params.type,
      dateInterval: params.dateInterval,
    );
  }
}

class FetchTripsParams extends Equatable {
  final String? type;
  final DateInterval? dateInterval;
  const FetchTripsParams({
    this.type,
    this.dateInterval,
  });

  @override
  List<Object?> get props => [type, dateInterval];
}
