import 'package:flutter/material.dart';
import 'package:travel_mate_ui/config/constants/hotel.dart';
import 'package:travel_mate_ui/core/utils/extensions.dart';
import 'package:travel_mate_ui/core/utils/spacing.dart';
import 'package:travel_mate_ui/core/widget/app_bottom_bool_new.dart';
import 'package:travel_mate_ui/core/widget/app_bottom_favorite.dart';
import 'package:travel_mate_ui/core/widget/app_text_overflow.dart';

class HotelItem extends StatelessWidget {
  final Hotel appHotel;
  const HotelItem({super.key, required this.appHotel});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: context.screenHeight / 2.7,
          decoration: BoxDecoration(),
          child: ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(15),
            child: Image.network(appHotel.image.toString(), fit: BoxFit.cover),
          ),
        ),
        Positioned(
          top: 20,
          left: 20,
          child: AppTextOverflow(title: appHotel.title.toString()),
        ),

        Positioned(
          bottom: 20,
          left: 20,
          child: Row(
            children: [
              AppBottomBoolNew(height: 53, width: 180),
              Spacing.horizontalSpace(horizontal: context.screenWidth / 20),
              AppBottomFavorite(),
            ],
          ),
        ),
      ],
    );
  }
}
