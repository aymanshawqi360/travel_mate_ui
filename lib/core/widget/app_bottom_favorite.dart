import 'package:flutter/material.dart';
import 'package:travel_mate_ui/core/utils/hex_color.dart';

class AppBottomFavorite extends StatelessWidget {
  final double? maxRadius;
  final double? minRadius;
  final Color? backgroundColor;
  final Widget? child;
  final void Function()? onTap;

  const AppBottomFavorite({
    super.key,
    this.maxRadius,
    this.minRadius,
    this.backgroundColor,
    this.child,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CircleAvatar(
        maxRadius: maxRadius ?? 27,
        minRadius: minRadius ?? 27,
        // radius: radius,
        backgroundColor: backgroundColor ?? HexColor(hexColor: "E7EEF3"),
        child: child,
      ),
    );
  }
}
