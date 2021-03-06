import 'package:flutter/cupertino.dart';
import 'package:news_app/core/constants/colors.dart';
import 'package:news_app/core/constants/fonts.dart';

abstract class Styles {
  static TextStyle appbarHeader = const TextStyle(
    color: AppColors.black,
    fontSize: Fonts.pixel30,
    fontWeight: Fonts.w9
  );

  static TextStyle dropCap = const TextStyle(
      color: AppColors.black,
      fontSize: Fonts.pixel50 + 10,
      fontWeight: Fonts.w8
  );

  static TextStyle header = const TextStyle(
      color: AppColors.black,
      fontSize: Fonts.pixel28,
      fontWeight: Fonts.w8
  );

  static TextStyle activeTabText = const TextStyle(
      color: AppColors.white,
      fontSize: Fonts.pixel16,
      fontWeight: Fonts.w7
  );

  static TextStyle inactiveTabText = const TextStyle(
      color: AppColors.black,
      fontSize: Fonts.pixel16,
      fontWeight: Fonts.w7
  );

  static TextStyle headline = const TextStyle(
      color: AppColors.black,
      fontSize: Fonts.pixel24,
      fontFamily: 'Nunito',
      fontWeight: Fonts.w7
  );

  static TextStyle headline2 = const TextStyle(
      color: AppColors.black,
      fontSize: Fonts.pixel20,
      fontWeight: Fonts.w7
  );

  static TextStyle headline3 = const TextStyle(
      color: AppColors.black,
      fontSize: Fonts.pixel22,
      fontFamily: 'Nunito',
      height: 1.5,
      fontWeight: Fonts.w7
  );

  static TextStyle headline4 = const TextStyle(
      color: AppColors.black,
      fontSize: Fonts.pixel22,
      fontFamily: 'Nunito',
      fontWeight: Fonts.w9
  );

  static TextStyle smallText = const TextStyle(
      color: AppColors.black,
      fontSize: Fonts.pixel16 - 1,
      fontWeight: Fonts.w6,
      fontFamily: 'Nunito'
  );

  static TextStyle smallText2 = const TextStyle(
      color: AppColors.black,
      fontSize: Fonts.pixel18 - 1,
      fontWeight: Fonts.w7,
      fontFamily: 'Nunito'
  );

  static TextStyle categoryText = TextStyle(
      color: AppColors.black.withAlpha(100),
      fontSize: Fonts.pixel18,
      height: 2.0,
      fontFamily: 'Nunito',
      fontWeight: Fonts.w8
  );

  static TextStyle footerText = TextStyle(
      color: AppColors.black.withAlpha(50),
      fontSize: Fonts.pixel14,
      fontFamily: 'Nunito',
      height: 2.5,
      fontWeight: Fonts.w4
  );

  static TextStyle footerText2 = TextStyle(
      color: AppColors.black.withAlpha(100),
      fontSize: Fonts.pixel14,
      fontFamily: 'Nunito',
      height: 1.3,
      fontWeight: Fonts.w4
  );

  static TextStyle infoText = const TextStyle(
      color: AppColors.black,
      fontSize: Fonts.pixel14,
      fontFamily: 'Nunito',
      fontWeight: Fonts.w4
  );

  static TextStyle bodyText = const TextStyle(
      color: AppColors.black,
      fontSize: Fonts.pixel18,
      height: 1.5,
      fontFamily: 'Nunito',
      fontWeight: Fonts.w4
  );
}