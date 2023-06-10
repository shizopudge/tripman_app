import 'package:dio/dio.dart';

import '../../../../core/data/network/api/dio_client.dart';
import '../../../../core/data/network/api/dio_exception.dart';
import '../../../../core/domain/entities/date_interval/date_interval.dart';
import '../../../../core/error/failures/failures.dart';
import '../models/trip_model.dart';

abstract interface class TripRemoteDataSource {
  Future<List<TripModel>> fetchTrips({
    String? type,
    DateInterval? interval,
  });
}

class TripRemoteDataSourceImpl implements TripRemoteDataSource {
  final DioClient dioClient;

  const TripRemoteDataSourceImpl({required this.dioClient});

  @override
  Future<List<TripModel>> fetchTrips(
      {String? type, DateInterval? interval}) async {
    try {
      final response = await dioClient.get('/trips');
      final tripModels = (response.data['data'] as List)
          .map((e) => TripModel.fromJson(e))
          .toList();
      return tripModels;
    } on DioException catch (e) {
      final String errorMessage = DioExceptions.fromDioError(e).toString();
      throw ServerFailure(message: errorMessage);
    } catch (e) {
      throw ServerFailure(message: e.toString());
    }
  }
}
