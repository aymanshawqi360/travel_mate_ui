import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:travel_mate_ui/config/constants/hotel.dart';
import 'package:travel_mate_ui/core/utils/extensions.dart';
import 'package:travel_mate_ui/features/home/presentation/widget/nearby_destination/hotel_item.dart';

class ListNearbyDestination extends StatelessWidget {
  final List<Hotel> listHotel;
  const ListNearbyDestination({super.key, required this.listHotel});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.screenHeight / 3,
      child: CardSwiper(
        backCardOffset: Offset(-40, 0),
        allowedSwipeDirection: AllowedSwipeDirection.only(
          right: true,
          left: false,
        ),

        padding: EdgeInsetsGeometry.only(left: context.screenWidth / 7),
        numberOfCardsDisplayed: 3,
        cardsCount: listHotel.length,
        cardBuilder: (context, index, percentX, percentY) =>
            HotelItem(appHotel: listHotel[index]),
      ),
    );
  }
}
