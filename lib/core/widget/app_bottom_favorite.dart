import 'package:flutter/material.dart';
import 'package:travel_mate_ui/core/utils/hex_color.dart';

class AppBottomFavorite extends StatelessWidget {
  final double? maxRadius;
  final double? minRadius;
  final Color? backgroundColor;
  final Widget? child;

  const AppBottomFavorite({
    super.key,
    this.maxRadius,
    this.minRadius,
    this.backgroundColor,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      maxRadius: maxRadius ?? 27,
      minRadius: minRadius ?? 27,
      // radius: radius,
      backgroundColor: HexColor(hexColor: "E7EEF3"),
      child:
          child ??
          Icon(Icons.favorite_rounded, color: HexColor(hexColor: "EA240D")),
    );
  }
}
