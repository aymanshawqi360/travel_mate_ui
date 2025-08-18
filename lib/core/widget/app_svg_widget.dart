import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppSvgWidget extends StatelessWidget {
  final String svgPath;
  final BoxFit? fit;
  final double? height;
  final double? width;
  const AppSvgWidget({
    super.key,
    required this.svgPath,
    this.fit,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      svgPath,
      fit: fit ?? BoxFit.contain,
      height: height,
      width: width,
    );
  }
}
