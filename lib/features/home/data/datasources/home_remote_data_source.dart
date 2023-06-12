import 'package:dio/dio.dart';

import '../../../../core/data/network/api/dio_client.dart';
import '../../../../core/data/network/api/dio_exception.dart';
import '../../../../core/domain/entities/date_interval/date_interval.dart';
import '../../../../core/error/failures/fault.dart';
import '../models/trip_model.dart';

abstract interface class HomeRemoteDataSource {
  Future<List<TripModel>> fetchTrips({
    String? type,
    DateInterval? dateInterval,
  });
}

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  final DioClient dioClient;

  const HomeRemoteDataSourceImpl(this.dioClient);

  @override
  Future<List<TripModel>> fetchTrips(
      {String? type, DateInterval? dateInterval}) async {
    try {
      await Future.delayed(const Duration(milliseconds: 500));
      final response = await dioClient.get('/trips');
      final tripModels = (response.data['data'] as List)
          .map((e) => TripModel.fromJson(e))
          .toList();
      return tripModels;
    } on DioException catch (e) {
      final String errorMessage = DioExceptions.fromDioError(e).toString();
      throw ServerFault(message: errorMessage);
    } catch (e) {
      throw ServerFault(message: e.toString());
    }
  }
}
