import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_mate_ui/config/constants/hotel.dart';
import 'package:travel_mate_ui/config/fonts/colors_manager.dart';
import 'package:travel_mate_ui/core/utils/extensions.dart';
import 'package:travel_mate_ui/core/utils/hex_color.dart';
import 'package:travel_mate_ui/core/utils/spacing.dart';
import 'package:travel_mate_ui/core/widget/app_bottom_bool_new.dart';
import 'package:travel_mate_ui/core/widget/app_bottom_favorite.dart';
import 'package:travel_mate_ui/core/widget/app_text_overflow.dart';
import 'package:travel_mate_ui/features/detail_page/presentation/screen/detail_page.dart';
import 'package:travel_mate_ui/features/home/presentation/cubit/travel_mate_cubit.dart';
import 'package:travel_mate_ui/features/home/presentation/cubit/travel_mate_state.dart';

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
              AppBottomBoolNew(
                height: 53,
                width: 180,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => BlocProvider.value(
                        value: TravelMateCubit.get(context),

                        child: DetailPage(hotel: appHotel),
                      ),
                    ),
                  );
                  // context.pushNamed(Routes.detailPage, arguments: appHotel);
                },
              ),
              Spacing.horizontalSpace(horizontal: context.screenWidth / 20),
              AppBottomFavorite(
                onTap: () {
                  context.read<TravelMateCubit>().onTapFavorite(
                    id: appHotel.id!,
                  );
                },
                child: BlocBuilder<TravelMateCubit, TravelMateState>(
                  builder: (context, state) {
                    final cubit = context.read<TravelMateCubit>();
                    print(cubit.saveFavorite);
                    return Icon(
                      Icons.favorite_rounded,
                      color: cubit.saveFavorite.contains(appHotel.id)
                          ? HexColor(hexColor: "EA240D")
                          : ColorsManager.black,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
