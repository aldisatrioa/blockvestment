import 'package:flutter/material.dart';
import 'package:starter_app/stock_screen.dart';

class BottomNavigationBarTuple {
  final Widget screen;
  final Icon icon;
  final String label;

  BottomNavigationBarTuple({required this.screen, required this.icon, required this.label});
}