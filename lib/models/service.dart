import 'package:flutter/material.dart';

import '../constants.dart';

class Service {
  final String title, icon;
  final int id;
  final Color color, iconColor;

  Service({
    required this.id,
    required this.title,
    required this.color,
    required this.iconColor,
    required this.icon,
  });
}

List<Service> services = [
  Service(
    id: 1,
    title: "Cleaning Services \n& Bundles",
    color: lightGreen,
    iconColor: green,
    icon: "assets/icons/Award.svg",
  ),
  Service(
    id: 2,
    title: "Errands \n& Chores",
    color: lightOrange,
    iconColor: orange,
    icon: "assets/icons/Clock.svg",
  ),
  Service(
    id: 3,
    title: "Special Requests",
    color: lightYellow,
    iconColor: yellow,
    icon: "assets/icons/Present.svg",
  ),
  Service(
    id: 4,
    title: "Partner Services",
    color: lightBlue,
    iconColor: textColor,
    icon: "assets/icons/Heart.svg",
  ),
];
