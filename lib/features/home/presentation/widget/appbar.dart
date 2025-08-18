import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_mate_ui/config/fonts/styles.dart';
import 'package:travel_mate_ui/core/utils/assets_manager.dart';
import 'package:travel_mate_ui/core/utils/extensions.dart';
import 'package:travel_mate_ui/core/utils/hex_color.dart';

class AppbarWidget extends StatelessWidget {
  const AppbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Find Your\nFavorite Place  ", style: TextStyles.font22Medium),
        CircleAvatar(
          maxRadius: context.screenHeight / 35,

          backgroundColor: HexColor(hexColor: "FAFBFD"),
          child: SvgPicture.asset(AssetsManager.notifications),
        ),
      ],
    );
  }
}
