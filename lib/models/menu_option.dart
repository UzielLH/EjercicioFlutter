import 'package:flutter/material.dart';

class MenuOption {
  final String route;
  final String title;
  final Widget screen;
  final Icon icon;

  MenuOption({
    required this.route,
    required this.title,
    required this.screen,
    required this.icon,
  });
}