import 'dart:ui';
import 'package:flutter/material.dart';

class AppBottomBoolNew extends StatelessWidget {
  final double width;
  final double height;
  final double? sigmaX;
  final double? sigmaY;
  final String? title;
  final TextStyle? style;
  const AppBottomBoolNew({
    super.key,
    required this.width,
    required this.height,
    this.sigmaX,
    this.sigmaY,
    this.title,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(30),
      child: SizedBox(
        width: width,
        height: height,
        child: Stack(
          children: [
            BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: sigmaX ?? 3,
                sigmaY: sigmaY ?? 3,
              ),
              child: SizedBox(
                child: Center(
                  child: Text(
                    title ?? "Book New",
                    style: style ?? TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white.withOpacity(0.6),
                  width: 0.5,
                ),
                borderRadius: BorderRadius.circular(30),
                gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.white.withOpacity(0.1),
                    Colors.white.withOpacity(0.1),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
