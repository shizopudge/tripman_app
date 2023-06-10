class Endpoints {
  Endpoints._();

  static const String baseUrl = 'http://192.168.42.246:3000';

  static const Duration receiveTimeout = Duration(milliseconds: 5000);

  static const Duration connectionTimeout = Duration(milliseconds: 5000);

  static const String trips = '/trips';
}
