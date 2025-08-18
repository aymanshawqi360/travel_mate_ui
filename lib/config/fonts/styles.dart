import 'package:flutter/material.dart';
import 'package:travel_mate_ui/config/fonts/colors_manager.dart';
import 'package:travel_mate_ui/config/fonts/font_weight.dart';

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
}
