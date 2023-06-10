import 'package:equatable/equatable.dart';

class Month extends Equatable {
  final int month;
  final int year;
  final List<DateTime> dateCells;
  final List<DateTime>? previousMonthDays;
  final List<DateTime>? pastDays;
  final List<DateTime>? availableDates;

  const Month({
    required this.month,
    required this.year,
    required this.dateCells,
    required this.previousMonthDays,
    this.pastDays,
    this.availableDates,
  });

  @override
  List<Object?> get props =>
      [month, year, dateCells, previousMonthDays, pastDays, availableDates];
}
