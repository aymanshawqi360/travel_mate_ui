import 'package:flutter/material.dart';
import 'package:travel_mate_ui/config/fonts/styles.dart';
import 'package:travel_mate_ui/core/utils/app_strings.dart';
import 'package:travel_mate_ui/core/utils/extensions.dart';
import 'package:travel_mate_ui/core/utils/spacing.dart';
import 'package:travel_mate_ui/core/widget/app_text_form_file.dart';
import 'package:travel_mate_ui/features/home/presentation/widget/Popular_Place/popular_place_bloc_listener.dart';
import 'package:travel_mate_ui/features/home/presentation/widget/appbar.dart';
import 'package:travel_mate_ui/features/home/presentation/widget/category/category_bloc_listener.dart';
import 'package:travel_mate_ui/features/home/presentation/widget/nearby_destination/nearby_destinatio_bloc_listener.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          scrollDirection: Axis.vertical,
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: context.screenHeight / 40,
                      left: context.screenWidth / 30,
                      right: context.screenWidth / 30,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppbarWidget(),
                        Spacing.verticalSpace(
                          vertical: context.screenHeight / 40,
                        ),
                        AppTextFormFile(onChanged: (value) {}),
                        Spacing.verticalSpace(
                          vertical: context.screenHeight / 40,
                        ),
                        CategoryBlocListener(),
                        Spacing.verticalSpace(
                          vertical: context.screenHeight / 40,
                        ),
                        Text(
                          AppStrings.nearbyDestination,
                          style: TextStyles.font17Medium,
                        ),
                      ],
                    ),
                  ),
                  Spacing.verticalSpace(vertical: context.screenHeight / 50),
                  NearbyDestinatioBlocListener(),
                  Spacing.verticalSpace(vertical: context.screenHeight / 50),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(
                  left: context.screenWidth / 30,
                  right: context.screenWidth / 30,
                  bottom: context.screenHeight / 30,
                ),
                child: Text(
                  AppStrings.popularPlace,
                  style: TextStyles.font17Medium,
                ),
              ),
            ),

            SliverPadding(
              padding: EdgeInsets.only(
                left: context.screenWidth / 30,
                right: context.screenWidth / 30,
              ),
              sliver: PopularPlaceBlocListener(),
            ),
          ],
        ),
      ),
    );
  }
}
