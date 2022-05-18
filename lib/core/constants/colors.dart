import 'package:flutter/material.dart';
abstract class AppColors {

static const Color white = Color(0xFFFFFFFF);
static const Color black = Color(0xFF000000);
static const Color transparent = Colors.transparent;
static Color? lineGrey = Colors.grey[300];

}


Map<int, Color> color = {
  50: AppColors.white,
  100: AppColors.white,
  200: AppColors.white,
  300: AppColors.white,
  400: AppColors.white,
  500: AppColors.white,
  600: AppColors.white,
  700: AppColors.white,
  800: AppColors.white,
  900: AppColors.white,
};

MaterialColor colorCustom = MaterialColor(0xFFFFFFFF, color);