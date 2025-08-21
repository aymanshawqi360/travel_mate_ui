import 'package:flutter/material.dart';
import 'package:travel_mate_ui/config/constants/hotel.dart';
import 'package:travel_mate_ui/config/fonts/styles.dart';
import 'package:travel_mate_ui/core/utils/app_strings.dart';
import 'package:travel_mate_ui/core/utils/extensions.dart';
import 'package:travel_mate_ui/core/utils/hex_color.dart';
import 'package:travel_mate_ui/features/detail_page/presentation/widget/deatile_body.dart';
import 'package:travel_mate_ui/features/detail_page/presentation/widget/detail_sliver_appbar.dart';

class DetailPage extends StatelessWidget {
  final Hotel hotel;
  const DetailPage({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          DetailSliverAppbar(hotel: hotel),
          DeatileBody(hotel: hotel),
        ],
      ),
      bottomNavigationBar: Container(
        height: 80,
        decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,

          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 10)],
        ),
        child: Padding(
          padding: EdgeInsetsGeometry.symmetric(
            horizontal: context.screenWidth / 25,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppStrings.price,
                    style: TextStyle(color: HexColor(hexColor: "7E8186")),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("\$${hotel.price}", style: TextStyles.font23Bold),
                      Padding(
                        padding: EdgeInsetsGeometry.only(top: 10),
                        child: Text(
                          AppStrings.night,
                          style: TextStyles.font13Light,
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              Container(
                width: context.screenWidth / 2.5,
                height: context.screenHeight / 20,
                decoration: BoxDecoration(
                  color: HexColor(hexColor: "057EF1"),
                  borderRadius: BorderRadius.circular(30),
                ),
                alignment: Alignment.center,
                child: Text(AppStrings.bookNow, style: TextStyles.font16Medium),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
