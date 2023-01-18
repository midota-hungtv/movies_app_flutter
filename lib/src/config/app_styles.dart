import 'package:flutter/material.dart';
import 'package:movies_app/src/config/app_colors.dart';

class TxtStyle {
  static const heading1SemiBold =
      TextStyle(fontSize: 32, fontWeight: FontWeight.w500, fontFamily: 'Sen');
  static const heading2SemiBold =
      TextStyle(fontSize: 22, fontWeight: FontWeight.w500, fontFamily: 'Sen');
  static const heading3SemiBold =
      TextStyle(fontSize: 18, fontWeight: FontWeight.w500, fontFamily: 'Sen', color: DarkTheme.white);
  static const heading4SemiBold = TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      fontFamily: 'Sen',
      color: DarkTheme.white);
  static const heading4SemiLight = TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.w300,
      fontFamily: 'Sen',
      color: DarkTheme.white);
}