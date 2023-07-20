import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class InputStyleWidget {
  InputStyleWidget._();
  static InputBorder get inputBorder => OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(
          color: AppColors.black,
        ),
      );
}
