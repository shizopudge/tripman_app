import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tripman/core/presentation/animations/fade_animation_x.dart';

import '../../../../domain/entities/date_interval/date_interval.dart';
import '../../../../styles/styles.dart';
import '../../../../utils/date_format_utils.dart';
import '../../../animations/fade_animation_y_up.dart';
import '../../buttons/rounded_text_button.dart';
import '../../common/bottom_container.dart';
import '../entities/month.dart';
import '../logic/calendar_cubit.dart';
import 'day.dart';

class Calendar extends StatelessWidget {
  final int monthCount;
  final List<DateInterval>? availableRanges;
  final DateInterval? selectedDateInterval;
  final void Function(DateInterval) onDateIntervalChange;
  const Calendar({
    super.key,
    this.monthCount = 12,
    required this.selectedDateInterval,
    required this.onDateIntervalChange,
    required this.availableRanges,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CalendarCubit>(
      create: (_) => CalendarCubit(availableRanges: availableRanges)
        ..init(selectedDateInterval),
      child: Flexible(
        child: Column(
          children: [
            Flexible(
              child: ListView.builder(
                shrinkWrap: true,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                itemCount: monthCount,
                itemBuilder: (context, monthIndex) {
                  final Month month =
                      context.read<CalendarCubit>().createMonth(monthIndex);
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FadeAnimationX(
                          delay: .1,
                          child: Text(
                            DateFormatUtils.monthYear(
                              year: month.year,
                              month: month.month,
                            ),
                            style: kSFProDisplaySemiBold.copyWith(
                              color: kBlack,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        FadeAnimationX(
                          delay: .15,
                          child: GridView.builder(
                            itemCount: month.dateCells.length + 7,
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 7,
                              mainAxisSpacing: 6,
                              crossAxisSpacing: 0,
                            ),
                            itemBuilder: (context, index) => Day(
                              index: index,
                              month: month,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Builder(
              builder: (context) {
                final DateInterval? selectedCalendarDateInterval =
                    context.watch<CalendarCubit>().state;
                return FadeAnimationYUp(
                  delay: .1,
                  child: BottomShadowContainer(
                    left: selectedCalendarDateInterval != null &&
                            selectedCalendarDateInterval.start !=
                                selectedCalendarDateInterval.end
                        ? Text(
                            DateFormatUtils.dateRange(
                                interval: selectedCalendarDateInterval,
                                withYear: true),
                            overflow: TextOverflow.visible,
                            style: kSFProDisplayMedium.copyWith(
                              fontSize: 16,
                              color: kBlack,
                            ),
                          )
                        : Text(
                            'Даты поездки',
                            overflow: TextOverflow.visible,
                            style: kSFProDisplayMedium.copyWith(
                              fontSize: 16,
                              color: kBlack50,
                            ),
                          ),
                    right: RoundedTextButton(
                      isEnabled: selectedCalendarDateInterval != null &&
                          selectedCalendarDateInterval.start !=
                              selectedCalendarDateInterval.end &&
                          selectedCalendarDateInterval != selectedDateInterval,
                      text: 'Забронировать',
                      onTap: () {
                        if (selectedCalendarDateInterval !=
                            selectedDateInterval) {
                          onDateIntervalChange(selectedCalendarDateInterval!);
                        }
                      },
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
