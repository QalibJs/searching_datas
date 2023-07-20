import 'package:flutter/material.dart';

import '../../../constants/app_text_style.dart';
import '../../../constants/app_texts.dart';

class StaticHomeAppBarTitleWidget extends StatelessWidget {
  const StaticHomeAppBarTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Text(
          AppTexts.usersDatas,
          style: AppTextStyle.appBarStyle,
        );
  }
}