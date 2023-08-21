import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  static const Color black = Colors.black;
  static const Color white = Colors.white;
  static const Color lightBlue = Colors.lightBlue;
  static const Color grey = Colors.grey;
  static const Color kPrimaryColor = Color(0xFF043459);
  static const Color darkBlue = Color(0xFF043459);
  static const Color kBlackColor = Color(0xFF181725);
  static const Color kWhiteColor = Color(0xFFE5E5E5);
  static const Color kLightGrayColor = Color(0xFFF2F3F2);
  static const Color kGrayColor = Color(0xFF7C7C7C);
  static const Color kDarkGrayColor = Color(0xFF4C4F4D);

  ThemeData theme = ThemeData(
    primaryColor: AppColors.kPrimaryColor,
    backgroundColor: AppColors.kWhiteColor,
  );
}
