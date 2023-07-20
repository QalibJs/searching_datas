import 'package:flutter/material.dart';
import 'package:searching_datas/constants/app_paddings.dart';
import '../constants/app_button_style.dart';
import '../constants/app_text_style.dart';

class GlobalButtonWidget extends StatelessWidget {
  final Function()? onPressed;
  final String text;
  final Color? color;
  final TextStyle? textStyle;
  const GlobalButtonWidget({
    Key? key,
    this.onPressed,
    required this.text,
    this.color,
    this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.lrt12(),
      child: ElevatedButton(
        onPressed: () => onPressed!(),
        style: AppElevatedStyles.elevatedButtonStyle(color!),
        child: Text(
          text,
          style: AppTextStyle.bggText,
        ),
      ),
    );
  }
}
