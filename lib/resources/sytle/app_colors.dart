import 'package:flutter/material.dart';


class AppColors{
  AppColors._();

  static Color black = Colors.black;
  static Color kPrimaryColor = Color(0xFF043459);
  static Color kBlackColor = Color(0xFF181725);
  static Color kWhiteColor = Color(0xFFE5E5E5);
  static Color kLightGrayColor = Color(0xFFF2F3F2);
  static Color kGrayColor = Color(0xFF7C7C7C);
  static Color kDarkGrayColor = Color(0xFF4C4F4D);


}
ThemeData theme = ThemeData(
  primaryColor: AppColors.kPrimaryColor,
  backgroundColor: AppColors.kWhiteColor,
);