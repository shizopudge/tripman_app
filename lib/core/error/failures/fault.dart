import 'package:freezed_annotation/freezed_annotation.dart';

part 'fault.freezed.dart';
part 'fault.g.dart';

@freezed
class Fault with _$Fault {
  const factory Fault.unknown({
    @Default('Что-то пошло не так...') String message,
  }) = UnknownFault;

  const factory Fault.serverFault({
    required String message,
  }) = ServerFault;

  const factory Fault.cacheFault({
    required String message,
  }) = CacheFault;

  factory Fault.fromJson(Map<String, dynamic> json) => _$FaultFromJson(json);
}
