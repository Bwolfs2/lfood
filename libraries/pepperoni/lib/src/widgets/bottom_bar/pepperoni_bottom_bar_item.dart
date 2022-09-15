import 'package:flutter/material.dart';

class PepperoniBottomBarItem {
  final String label;
  final IconData icon;
  final IconData activeIcon;
  final int countBadge;

  PepperoniBottomBarItem({
    required this.label,
    required this.icon,
    required this.activeIcon,
    this.countBadge = 0,
  });
}
