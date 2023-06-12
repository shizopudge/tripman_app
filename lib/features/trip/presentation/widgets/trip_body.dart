import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/domain/entities/trip/trip.dart';
import '../../../../core/presentation/animations/fade_animation_x.dart';
import '../../../../core/presentation/animations/fade_animation_y_down.dart';
import '../../../../core/presentation/widgets/bottom_sheet/sized_bottom_sheet.dart';
import '../../../../core/presentation/widgets/buttons/rectangle_button.dart';
import '../../../../core/presentation/widgets/images/images_carousel.dart';
import '../../../../core/styles/styles.dart';
import '../../../../core/utils/popup_utils.dart';

class TripBody extends StatefulWidget {
  final Trip trip;
  final CarouselController _carouselController;
  final ValueNotifier<int> _currentImageNotifier;
  const TripBody(
      {super.key,
      required this.trip,
      required CarouselController carouselController,
      required ValueNotifier<int> currentImageNotifier})
      : _carouselController = carouselController,
        _currentImageNotifier = currentImageNotifier;

  @override
  State<TripBody> createState() => _TripBodyState();
}

class _TripBodyState extends State<TripBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Hero(
          tag: widget.trip.id,
          child: ImagesCarousel(
            height: MediaQuery.of(context).size.height * .32,
            controller: widget._carouselController,
            currentImageNotifier: widget._currentImageNotifier,
            images: widget.trip.images,
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              colors: [
                kBlack.withOpacity(.5),
                kBlack.withOpacity(.1),
              ],
            ),
          ),
        ),
        Expanded(
          child: ListView(
            padding: const EdgeInsets.all(20),
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    flex: 2,
                    child: FadeAnimationYDown(
                      delay: .3,
                      child: Text(
                        widget.trip.title,
                        overflow: TextOverflow.visible,
                        maxLines: 2,
                        style: kSFProDisplaySemiBold.copyWith(
                          height: 1,
                          fontSize: 24,
                          color: kBlack,
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: FadeAnimationYDown(
                      delay: .4,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SvgPicture.asset(
                            'assets/icons/map_arrow.svg',
                          ),
                          const SizedBox(
                            width: 6,
                          ),
                          Flexible(
                            child: Text(
                              '${widget.trip.distance} км',
                              maxLines: 3,
                              overflow: TextOverflow.visible,
                              style: kSFProDisplayMedium.copyWith(
                                color: kBlack,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              FadeAnimationYDown(
                delay: .5,
                child: Text(
                  widget.trip.locationName,
                  overflow: TextOverflow.visible,
                  style: kSFProDisplayRegular.copyWith(
                    color: kBlack50,
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              FadeAnimationYDown(
                delay: .6,
                child: Text(
                  widget.trip.description,
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  style: kSFProDisplayRegular.copyWith(
                    color: kBlack50,
                    fontSize: 16,
                  ),
                ),
              ),
              FadeAnimationYDown(
                delay: .7,
                child: GestureDetector(
                  onTap: () => PopupUtils.showMyBottomSheet(
                    context: context,
                    bottomSheet: SizedBottomSheet(
                      heightFactor: .68,
                      title: 'Подробнее',
                      child: Text(
                        widget.trip.description,
                        style: kSFProDisplayRegular.copyWith(
                          color: kBlack,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                  child: Text(
                    'Подробнее',
                    overflow: TextOverflow.ellipsis,
                    style: kSFProDisplayMedium.copyWith(
                      color: kBlack,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  FadeAnimationX(
                    delay: .8,
                    child: RectangleButton(
                      onTap: () {},
                      iconPath: 'assets/icons/phone.svg',
                      text: 'Позвонить',
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  FadeAnimationX(
                    delay: .9,
                    child: RectangleButton(
                      onTap: () {},
                      iconPath: 'assets/icons/message.svg',
                      text: 'Написать',
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  FadeAnimationX(
                    delay: 1,
                    child: RectangleButton(
                      onTap: () {},
                      iconPath: 'assets/icons/share.svg',
                      text: 'Поделиться',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
