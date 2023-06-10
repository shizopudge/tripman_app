import '../../domain/entities/trip_type/trip_type.dart';

class LocalConstants {
  static const defaultTripType = TripType(
    title: 'Кэмпинги',
    image: 'assets/icons/camping.svg',
  );

  static const List<TripType> tripTypes = [
    TripType(
      title: 'Кэмпинги',
      image: 'assets/icons/camping.svg',
    ),
    TripType(
      title: 'Глэмпинги ',
      image: 'assets/icons/glamping.svg',
    ),
    TripType(
      title: 'Базы отдыха',
      image: 'assets/icons/rest_base.svg',
    ),
    TripType(
      title: 'Шале',
      image: 'assets/icons/chalet.svg',
    ),
  ];
}
