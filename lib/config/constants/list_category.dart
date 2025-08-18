import 'package:flutter/material.dart';
import 'package:travel_mate_ui/config/constants/categories.dart';

class ListCategory {
  List<Categories> categories = [
    Categories(image: Icons.king_bed_rounded, name: "Hotle", id: 0),
    Categories(image: Icons.flight_takeoff_outlined, name: "Flight", id: 1),
    Categories(image: Icons.fastfood, name: "Food", id: 2),
    Categories(image: Icons.directions_car_sharp, name: "Car", id: 3),
  ];
}
