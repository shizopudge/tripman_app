import 'package:dartz/dartz.dart';

import '../../../../core/constants/type_defs.dart';
import '../../../../core/domain/entities/date_interval/date_interval.dart';
import '../../../../core/domain/entities/trip/trip.dart';
import '../../../../core/error/failures/fault.dart';
import '../../domain/repositories/home_repository.dart';
import '../datasources/home_remote_data_source.dart';

class HomeRepositoryImpl implements HomeRepository {
  final HomeRemoteDataSource remoteDataSource;

  const HomeRepositoryImpl(this.remoteDataSource);

  @override
  FutureEither<List<Trip>> fetchTrips(
      {String? type, DateInterval? dateInterval}) async {
    try {
      final result = await remoteDataSource.fetchTrips(
        type: type,
        dateInterval: dateInterval,
      );
      final trips = result
          .map(
            (e) => Trip.fromModel(e),
          )
          .toList();
      return Right(trips);
    } on Fault catch (e) {
      return Left(ServerFault(message: e.message));
    } catch (e) {
      return Left(ServerFault(message: e.toString()));
    }
  }
}
