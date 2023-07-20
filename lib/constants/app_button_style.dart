import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AppElevatedStyles {
  AppElevatedStyles._();

  static ButtonStyle elevatedButtonStyle(Color color) =>
      ElevatedButton.styleFrom(
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        minimumSize: Size(250.h, 6.h),
      );
}
