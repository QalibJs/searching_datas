import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'app_colors.dart';

class AppTextStyle {
  static get appBarStyle => TextStyle(
        color: AppColors.black,
        fontWeight: FontWeight.bold,
        fontSize: 22,
      );
  static get idStyle => TextStyle(
        color: AppColors.black,
        fontWeight: FontWeight.bold,
        fontSize: 18,
      );
  static get bgText => TextStyle(
        color: AppColors.black,
        fontWeight: FontWeight.bold,
        fontSize: 2.3.h,
      );
  static get bggText => TextStyle(
        color: AppColors.white,
        fontWeight: FontWeight.bold,
        fontSize: 22,
      );
  static get smallText => TextStyle(
        color: AppColors.black,
        fontWeight: FontWeight.bold,
        fontSize: 1.3.h,
      );
}
