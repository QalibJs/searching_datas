import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_paddings.dart';
import '../../../constants/app_sized_box.dart';
import '../../../constants/app_text_style.dart';

class StaticHomeListTileWidget extends StatelessWidget {
  final String id;
  final String name;
  final String mail;
  const StaticHomeListTileWidget({
    super.key,
    required this.id,
    required this.name,
    required this.mail,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      key: ValueKey(id),
      color: AppColors.grey,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 8.2.h,
        margin: AppPaddings.lr12(),
        child: Row(
          children: [
            Text(
              "$id.",
              style: AppTextStyle.idStyle,
            ),
            AppSizedBox.w30,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppSizedBox.h5,
                Text(name, style: AppTextStyle.bgText),
                AppSizedBox.h5,
                Text(mail, style: AppTextStyle.smallText),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
