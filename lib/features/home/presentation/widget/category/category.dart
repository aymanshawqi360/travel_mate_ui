import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_mate_ui/config/fonts/colors_manager.dart';
import 'package:travel_mate_ui/config/constants/categories.dart';
import 'package:travel_mate_ui/core/utils/extensions.dart';
import 'package:travel_mate_ui/core/utils/hex_color.dart';
import 'package:travel_mate_ui/features/home/presentation/cubit/travel_mate_cubit.dart';
import 'package:travel_mate_ui/features/home/presentation/cubit/travel_mate_state.dart';

class Category extends StatelessWidget {
  final int index;

  final Categories appCategories;
  const Category({super.key, required this.index, required this.appCategories});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TravelMateCubit, TravelMateState>(
      buildWhen: (previous, current) => current is OnTapCategory,
      builder: (context, state) {
        final cubit = context.read<TravelMateCubit>();
        return Container(
          height: context.screenHeight / 11,
          width: context.screenWidth / 5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: index == cubit.index
                ? HexColor(hexColor: "047FEF")
                : HexColor(hexColor: "FAFBFD"),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                appCategories.image,
                size: 30,
                color: index == cubit.index
                    ? HexColor(hexColor: "FAFBFD")
                    : ColorsManager.black,
              ),
              Text(
                appCategories.name.toString(),
                style: TextStyle(
                  color: index == cubit.index
                      ? HexColor(hexColor: "FAFBFD")
                      : ColorsManager.black,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
