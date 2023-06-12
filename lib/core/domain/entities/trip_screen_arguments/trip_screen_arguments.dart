import 'package:carousel_slider/carousel_controller.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import '../trip/trip.dart';

class TripScreenArguments extends Equatable {
  final Trip trip;
  final CarouselController carouselController;
  final ValueNotifier<int> currentImageNotifier;

  const TripScreenArguments({
    required this.trip,
    required this.carouselController,
    required this.currentImageNotifier,
  });

  @override
  List<Object?> get props => [trip, carouselController, currentImageNotifier];
}
