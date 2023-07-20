import 'package:flutter/material.dart';
import 'package:searching_datas/constants/app_colors.dart';
import 'package:searching_datas/constants/app_paddings.dart';
import 'package:searching_datas/constants/app_text_style.dart';
import 'package:searching_datas/constants/app_texts.dart';
import 'package:sizer/sizer.dart';

class HomeEmptyWidget extends StatelessWidget {
  const HomeEmptyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: AppPaddings.lrbt48().copyWith(left: 1.h, right: 1.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.green, width: 5),
      ),
      child: Center(
        child: Text(
          AppTexts.emptyList,
          style: AppTextStyle.appBarStyle,
        ),
      ),
    );
  }
}
