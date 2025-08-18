import 'package:flutter/material.dart';

class Hotel {
  String? image;
  String? title;
  String? hotelFeatures;
  List<IconData>? icon;
  String? description;
  String? address;

  Hotel({
    this.image,
    this.title,
    this.hotelFeatures,
    this.description,
    this.icon,
    this.address,
  });
}
