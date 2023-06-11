import 'package:dartz/dartz.dart';

import '../../../../core/constants/type_defs.dart';
import '../../../../core/domain/entities/date_interval/date_interval.dart';
import '../../../../core/domain/entities/trip/trip.dart';
import '../../../../core/error/failures/failures.dart';
import '../../domain/repositories/home_repository.dart';
import '../datasources/trip_remote_data_source.dart';

class HomeRepositoryImpl implements HomeRepository {
  final HomeRemoteDataSource remoteDataSource;

  const HomeRepositoryImpl({
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
