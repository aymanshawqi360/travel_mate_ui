import 'package:flutter/material.dart';
import 'package:travel_mate_ui/core/utils/extensions.dart';
import 'package:travel_mate_ui/core/utils/hex_color.dart';

class AppTextOverflow extends StatelessWidget {
  final String title;
  final double? screenWidth;
  final int? maxLines;
  final TextOverflow? overflow;
  final Color? color;
  final double? fontSize;
  const AppTextOverflow({
    super.key,
    required this.title,
    this.overflow,
    this.screenWidth,
    this.maxLines,
    this.color,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: screenWidth ?? context.screenWidth / 1.9,
      ),
      child: Text(
        maxLines: maxLines ?? 2,
        overflow: overflow ?? TextOverflow.ellipsis,
        title,
        style: TextStyle(
          fontSize: fontSize ?? 20,
          color: color ?? HexColor(hexColor: "FFFFFF"),
        ),
      ),
    );
  }
}
