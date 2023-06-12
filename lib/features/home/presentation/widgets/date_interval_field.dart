import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/domain/entities/date_interval/date_interval.dart';
import '../../../../core/presentation/widgets/buttons/close_button.dart';
import '../../../../core/styles/styles.dart';
import '../../../../core/utils/date_format_utils.dart';

class DateIntervalField extends StatelessWidget {
  final DateInterval? dateInterval;
  final VoidCallback onTap;
  final VoidCallback onClear;
  const DateIntervalField({
    super.key,
    this.dateInterval,
    required this.onTap,
    required this.onClear,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        height: 48,
        decoration: BoxDecoration(
          border: Border.all(
            color: dateInterval == null ? kBlack.withOpacity(.2) : kBlack,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 19),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/calendar.svg',
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: dateInterval != null
                            ? Text(
                                DateFormatUtils.dateRange(
                                    interval: dateInterval!, withYear: true),
                                overflow: TextOverflow.ellipsis,
                                style: kSFProDisplayMedium.copyWith(
                                  color: kBlack,
                                  height: 1,
                                  fontSize: 16,
                                ),
                              )
                            : Text(
                                'Даты поездки',
                                overflow: TextOverflow.ellipsis,
                                style: kSFProDisplayMedium.copyWith(
                                  color: kBlack50,
                                  height: 1,
                                  fontSize: 16,
                                ),
                              ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            if (dateInterval != null)
              MyCloseButton(
                onTap: onClear,
              ),
          ],
        ),
      ),
    );
  }
}
