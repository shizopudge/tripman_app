import 'package:dartz/dartz.dart';

import '../../../../core/constants/type_defs.dart';
import '../../../../core/domain/entities/date_interval/date_interval.dart';
import '../../../../core/error/failures/failures.dart';
import '../../domain/entities/trip.dart';
import '../../domain/repositories/trip_repository.dart';
import '../datasources/trip_remote_data_source.dart';

class TripRepositoryImpl implements TripRepository {
  final TripRemoteDataSource remoteDataSource;

  const TripRepositoryImpl({
    required this.remoteDataSource,
  });

  @override
  FutureEither<List<Trip>> fetchTrips(
      {String? type, DateInterval? interval}) async {
    try {
      final result = await remoteDataSource.fetchTrips();
      final trips = result
          .map(
            (e) => Trip.fromModel(e),
          )
          .toList();
      return Right(trips);
    } on Failure catch (e) {
      return Left(ServerFailure(message: e.message));
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }
}
