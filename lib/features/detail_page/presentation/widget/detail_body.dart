import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_mate_ui/config/constants/hotel.dart';
import 'package:travel_mate_ui/config/fonts/colors_manager.dart';
import 'package:travel_mate_ui/config/fonts/styles.dart';
import 'package:travel_mate_ui/core/utils/app_strings.dart';
import 'package:travel_mate_ui/core/utils/assets_manager.dart';
import 'package:travel_mate_ui/core/utils/extensions.dart';
import 'package:travel_mate_ui/core/utils/hex_color.dart';
import 'package:travel_mate_ui/core/utils/spacing.dart';
import 'package:travel_mate_ui/core/widget/app_bottom_favorite.dart';
import 'package:travel_mate_ui/features/home/presentation/cubit/travel_mate_cubit.dart';
import 'package:travel_mate_ui/features/home/presentation/cubit/travel_mate_state.dart';

class DetailBody extends StatelessWidget {
  final Hotel hotel;
  const DetailBody({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<TravelMateCubit>();
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.only(
          left: context.screenWidth / 25,
          right: context.screenWidth / 25,
        ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  constraints: BoxConstraints(
                    maxWidth: context.screenWidth / 2,
                  ),
                  child: Text(
                    "${hotel.title}",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyles.font17Medium,
                  ),
                ),
                AppBottomFavorite(
                  onTap: () {
                    cubit.onTapFavorite(id: hotel.id!);
                  },
                  backgroundColor: Colors.grey.withOpacity(0.1),
                  child: BlocBuilder<TravelMateCubit, TravelMateState>(
                    builder: (context, state) {
                      return Icon(
                        Icons.favorite_rounded,
                        color: cubit.saveFavorite.contains(hotel.id)
                            ? HexColor(hexColor: "EA240D")
                            : ColorsManager.black,
                      );
                    },
                  ),
                ),
              ],
            ),
            Spacing.verticalSpace(vertical: context.screenHeight / 30),
            Row(
              children: [
                SvgPicture.asset(
                  AssetsManager.location,
                  color: ColorsManager.black,
                  height: 20,
                  width: 20,
                ),

                Text("${hotel.address}"),
              ],
            ),
            Text("${hotel.hotelFeatures}", style: TextStyles.font15Medium),
            Spacing.verticalSpace(vertical: context.screenHeight / 30),
            Text(AppStrings.whatThisPlaceOffers),
            Spacing.verticalSpace(vertical: context.screenHeight / 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(hotel.icon!.length, (index) {
                final name = hotel.icon![index].keys.join();
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  width: context.screenWidth / 5.5,
                  height: context.screenHeight / 12,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [Icon(hotel.icon![index][name]), Text(name)],
                  ),
                );
              }),
            ),
            Spacing.verticalSpace(vertical: context.screenHeight / 50),
            Text(AppStrings.description),
            Spacing.verticalSpace(vertical: context.screenHeight / 50),
            Text("${hotel.description}", style: TextStyle(fontSize: 15)),
          ],
        ),
      ),
    );
  }
}
