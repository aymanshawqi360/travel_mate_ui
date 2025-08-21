import 'package:flutter/material.dart';
import 'package:travel_mate_ui/config/fonts/colors_manager.dart';
import 'package:travel_mate_ui/config/fonts/font_weight.dart';
import 'package:travel_mate_ui/core/utils/hex_color.dart';

class TextStyles {
  TextStyles._();
  static final TextStyle font22Medium = TextStyle(
    color: ColorsManager.black,
    fontWeight: FontWeightHelper.medium,
    fontSize: 25,
  );
  static final TextStyle font17Medium = TextStyle(
    color: ColorsManager.black,
    fontWeight: FontWeightHelper.medium,
    fontSize: 17,
  );
  static final TextStyle font15Medium = TextStyle(
    color: HexColor(hexColor: '7E8186'),
    fontWeight: FontWeightHelper.medium,
    fontSize: 15,
  );
  static final TextStyle font16Medium = TextStyle(
    color: HexColor(hexColor: "FFFFFF"),
    fontWeight: FontWeightHelper.medium,
    fontSize: 16,
  );
  static final TextStyle font13Light = TextStyle(
    color: HexColor(hexColor: "7E8186"),
    fontWeight: FontWeightHelper.light,
    fontSize: 13,
  );
  static final TextStyle font23Bold = TextStyle(
    color: ColorsManager.black,
    fontWeight: FontWeightHelper.bold,
    fontSize: 23,
    decoration: TextDecoration.underline,
  );
}
