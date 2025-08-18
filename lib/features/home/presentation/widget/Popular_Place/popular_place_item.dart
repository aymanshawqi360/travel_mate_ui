import 'package:flutter/material.dart';
import 'package:travel_mate_ui/config/constants/popular_place.dart';
import 'package:travel_mate_ui/core/utils/extensions.dart';
import 'package:travel_mate_ui/core/utils/hex_color.dart';
import 'package:travel_mate_ui/core/utils/spacing.dart';
import 'package:travel_mate_ui/core/widget/app_bottom_bool_new.dart';
import 'package:travel_mate_ui/core/widget/app_bottom_favorite.dart';
import 'package:travel_mate_ui/core/widget/app_cahed_network_image.dart';
import 'package:travel_mate_ui/core/widget/app_text_overflow.dart';

class PopularPlaceItem extends StatelessWidget {
  final PopularPlace placeItem;
  const PopularPlaceItem({super.key, required this.placeItem});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadiusGeometry.circular(15),
          child: AppCahedNetworkImage(
            height: context.screenHeight / 4.5,
            width: context.screenWidth,
            fit: BoxFit.cover,
            image: "${placeItem.image}",
            placeholder: Container(
              height: context.screenHeight / 4.5,
              color: Colors.grey.shade300,
            ),
          ),
        ),
        Positioned(
          left: 20,
          top: 20,
          child: AppTextOverflow(
            title: placeItem.title.toString(),
            color: HexColor(hexColor: "FFFFFF"),
          ),
        ),

        Positioned(
          bottom: 20,
          left: 20,
          child: Row(
            children: [
              AppBottomBoolNew(
                height: context.screenHeight / 22,
                width: context.screenWidth / 3,
              ),
              Spacing.horizontalSpace(horizontal: context.screenWidth / 20),
              AppBottomFavorite(maxRadius: 22, minRadius: 22),
            ],
          ),
        ),
      ],
    );
  }
}
