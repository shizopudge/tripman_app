import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../domain/entities/date_interval/date_interval.dart';
import '../../../../utils/date_format_utils.dart';
import '../logic/calendar_cubit.dart';
import '../entities/month.dart';
import 'days/default_day.dart';
import 'days/interval_day.dart';
import 'days/marked_day.dart';
import 'days/unavailable_day.dart';

class Day extends StatelessWidget {
  final int index;
  final Month month;
  const Day({
    super.key,
    required this.index,
    required this.month,
  });

  @override
  Widget build(BuildContext context) {
    final List<DateTime> dateCells = month.dateCells;
    final List<DateTime>? previousMonthDays = month.previousMonthDays;
    final List<DateTime>? pastDays = month.pastDays;
    final List<DateTime>? availableDates = month.availableDates;
    if (index < 7) {
      return DefaultDay(
        day: DateFormatUtils.ruWeekdayShort(
          dayNumber: index + 1,
        ),
      );
    } else {
      final date = dateCells[index - 7];
      final day = date.day.toString();
      if (previousMonthDays != null) {
        if (previousMonthDays.contains(date)) {
          return UnavailableDay(
            day: day,
          );
        }
      }
      if (pastDays != null) {
        if (pastDays.contains(date)) {
          return UnavailableDay(day: day);
        }
      }
      if (availableDates != null) {
        if (!availableDates.contains(date)) {
          return UnavailableDay(day: day);
        }
      }
      final DateInterval? selectedDateInterval =
          context.watch<CalendarCubit>().state;
      if (selectedDateInterval != null) {
        if (selectedDateInterval.start.isAtSameMomentAs(date)) {
          return InkWell(
            onTap: () => context.read<CalendarCubit>().changeDateInterval(date),
            child: MarkedDay(
              day: day,
              isStart: true,
              isEqual: selectedDateInterval.start
                  .isAtSameMomentAs(selectedDateInterval.end),
              isOnEdge: context.read<CalendarCubit>().isPointOnEdge(
                    date: date,
                    isStart: true,
                  ),
            ),
          );
        } else if (selectedDateInterval.end.isAtSameMomentAs(date)) {
          return InkWell(
            onTap: () => context.read<CalendarCubit>().changeDateInterval(date),
            child: MarkedDay(
              day: day,
              isStart: false,
              isEqual: selectedDateInterval.start
                  .isAtSameMomentAs(selectedDateInterval.end),
              isOnEdge: context.read<CalendarCubit>().isPointOnEdge(
                    date: date,
                    isStart: false,
                  ),
            ),
          );
        } else if (selectedDateInterval.start.isBefore(date) &&
            selectedDateInterval.end.isAfter(date)) {
          return InkWell(
            onTap: () => context.read<CalendarCubit>().changeDateInterval(date),
            child: IntervaledDay(
              day: day,
              borderRadius: context.read<CalendarCubit>().getBorderRadius(date),
            ),
          );
        }
      }
      return InkWell(
          onTap: () => context.read<CalendarCubit>().changeDateInterval(date),
          child: DefaultDay(day: day));
    }
  }
}
