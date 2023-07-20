import 'package:flutter/material.dart';
import '../../../constants/app_colors.dart';
import '../widgets/static_home_app_bar_title_widget.dart';
import '../widgets/static_home_body_full_widget.dart';

class StaticHomeScreen extends StatelessWidget {
  const StaticHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
          foregroundColor: AppColors.black,
          backgroundColor: AppColors.white,
          elevation: 0,
          toolbarHeight: 30,
          centerTitle: true,
          title: const StaticHomeAppBarTitleWidget()),
      body: const StaticHomeBodyFullWidget(),
    );
  }
}
