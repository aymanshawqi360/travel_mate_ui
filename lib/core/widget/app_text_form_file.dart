import 'package:flutter/material.dart';
import 'package:travel_mate_ui/core/utils/assets_manager.dart';
import 'package:travel_mate_ui/core/utils/hex_color.dart';

class AppTextFormFile extends StatelessWidget {
  final void Function(String)? onChanged;
  const AppTextFormFile({super.key, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 50, vertical: 13),
        fillColor: HexColor(hexColor: "FFFFFF"),
        filled: true,
        prefixIcon: Image.asset(AssetsManager.search, scale: 4),

        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 0, color: Colors.transparent),
          borderRadius: BorderRadius.circular(30),
        ),

        hintText: "Search here",

        hintStyle: TextStyle(fontSize: 14),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 0, color: Colors.transparent),
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      onChanged: onChanged,
    );
  }
}
