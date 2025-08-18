import 'package:flutter/widgets.dart';

class Spacing {
  Spacing._();
  static SizedBox horizontalSpace({required double horizontal}) {
    return SizedBox(width: horizontal);
  }

  static SizedBox verticalSpace({required double vertical}) {
    return SizedBox(height: vertical);
  }
}
