import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:travel_mate_ui/config/constants/hotel.dart';
import 'package:travel_mate_ui/core/utils/extensions.dart';
import 'package:travel_mate_ui/core/utils/hex_color.dart';

class DetailSliverAppbar extends StatelessWidget {
  final Hotel hotel;
  const DetailSliverAppbar({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.transparent,
      foregroundColor: Colors.red,
      shadowColor: Colors.transparent,
      surfaceTintColor: Colors.blue,
      elevation: 0,

      bottom: PreferredSize(
        preferredSize: Size.fromRadius(5),
        child: Container(
          height: context.screenHeight / 35,
          width: context.screenWidth,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: SizedBox.shrink(),
        ),
      ),

      expandedHeight: context.screenHeight / 2.5,

      leadingWidth: 80,
      leading: Padding(
        padding: EdgeInsets.only(left: context.screenWidth / 24),
        child: Center(
          child: GestureDetector(
            onTap: () {
              context.pop();
            },
            child: ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(50),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white.withOpacity(0.24),
                  ),
                  child: Icon(
                    Icons.arrow_back_rounded,
                    color: HexColor(hexColor: "FFFFFF"),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: context.screenWidth / 24),
          child: Center(
            child: GestureDetector(
              onTap: () {
                context.pop();
              },
              child: ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(50),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white.withOpacity(0.24),
                    ),
                    child: Icon(
                      Icons.share,
                      color: HexColor(hexColor: "FFFFFF"),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],

      flexibleSpace: FlexibleSpaceBar(
        background: Image.network(
          hotel.image.toString(),
          width: context.screenWidth,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
