import 'package:flutter/material.dart';

class Hotel {
  int? id;
  String? image;
  String? title;
  String? hotelFeatures;
  List<Map<String, IconData>>? icon;
  String? description;
  String? address;
  int? price;

  Hotel({
    this.id,
    this.image,
    this.price,
    this.title,
    this.hotelFeatures,
    this.description,
    this.icon,
    this.address,
  });
}
