import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../domain/entities/date_interval/date_interval.dart';
import '../entities/month.dart';

class CalendarCubit extends Cubit<DateInterval?> {
  final DateInterval? availableRange;
  CalendarCubit({this.availableRange}) : super(null);

  void init(DateInterval? selectedDateInterval) {
    if (selectedDateInterval != null) {
      emit(selectedDateInterval);
    }
  }

  void changeDateInterval(DateTime date) {
    final DateInterval? selectedDateInterval = state;
    if (selectedDateInterval != null) {
      if (selectedDateInterval.start.isAtSameMomentAs(date)) {
        emit(null);
      } else if (selectedDateInterval.end.isAtSameMomentAs(date)) {
        emit(DateInterval(start: date, end: date));
      } else if (selectedDateInterval.start.isAfter(date)) {
        emit(DateInterval(
          start: date,
          end: selectedDateInterval.end,
        ));
      } else {
        emit(DateInterval(
          start: selectedDateInterval.start,
          end: date,
        ));
      }
    } else {
      emit(DateInterval(start: date, end: date));
    }
  }

  BorderRadius? getBorderRadius(DateTime date) {
    final int daysInMonthCount =
        DateUtils.getDaysInMonth(date.year, date.month);
    if (date.weekday == 1) {
      if (date.day == daysInMonthCount) {
        return BorderRadius.circular(100);
      }
      return const BorderRadius.horizontal(
        left: Radius.circular(100),
      );
    }
    if (date.weekday == 7) {
      if (date.day == 1) {
        return BorderRadius.circular(100);
      }
      return const BorderRadius.horizontal(
        right: Radius.circular(100),
      );
    }
    if (date.day == 1) {
      return const BorderRadius.horizontal(
        left: Radius.circular(100),
      );
    }
    if (date.day == daysInMonthCount) {
      return const BorderRadius.horizontal(
        right: Radius.circular(100),
      );
    }
    return null;
  }

  bool isPointOnEdge({required DateTime date, required bool isStart}) {
    final int daysInMonthCount =
        DateUtils.getDaysInMonth(date.year, date.month);
    if (isStart) {
      if (date.day == daysInMonthCount || date.weekday == 7) {
        return true;
      }
      return false;
    } else {
      if (date.day == 1 || date.weekday == 1) {
        return true;
      }
      return false;
    }
  }

  Month createMonth(int index) {
    final List<DateTime> dates = [];
    List<DateTime>? previousMonthDays;
    List<DateTime>? pastDays;
    List<DateTime>? availableDates;

    final DateTime currentDate = DateTime(
        DateTime.now().year, DateTime.now().month + index, DateTime.now().day);
    final int currentYear = currentDate.year;
    final int currentMonth = currentDate.month;
    final int currentDay = currentDate.day;

    final int currentMonthDayCount =
        DateUtils.getDaysInMonth(currentYear, currentMonth);

    final int firstWeekday = DateTime(currentYear, currentMonth, 1).weekday;

    if (firstWeekday > 1) {
      previousMonthDays = [];
      int previousMonthLastDay =
          DateUtils.getDaysInMonth(currentYear, currentMonth - 1);
      for (int i = 0; i < firstWeekday - 1; i++) {
        previousMonthDays
            .add(DateTime(currentYear, currentMonth - 1, previousMonthLastDay));
        previousMonthLastDay--;
      }
    }

    if (availableRange != null) {
      availableDates = [];
      final start = availableRange!.start;
      final end = availableRange!.end;
      for (int i = 0; i <= end.difference(start).inDays; i++) {
        final date = DateTime(start.year, start.month, start.day + i);
        availableDates.add(date);
      }
    }
    if (index == 0) {
      pastDays = [];
      final beforeDate =
          DateTime(currentYear, currentMonth - index, currentDay + 1);
      for (int i = 1; i < beforeDate.day; i++) {
        final date = DateTime(currentYear, currentMonth - index, i);
        if (date.isBefore(beforeDate)) {
          pastDays.add(date);
        }
      }
    }

    for (int i = 1; i <= currentMonthDayCount; i++) {
      final date = DateTime(currentYear, currentMonth, i);
      dates.add(date);
    }

    final List<DateTime> dateCells = [
      ...previousMonthDays?.reversed.toList() ?? [],
      ...dates,
    ];

    return Month(
      year: currentYear,
      month: currentMonth,
      previousMonthDays: previousMonthDays,
      pastDays: pastDays,
      availableDates: availableDates,
      dateCells: dateCells,
    );
  }

  bool isWeekday(int index) => index <= 6;
}
