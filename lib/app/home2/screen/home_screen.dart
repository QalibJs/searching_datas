import 'package:flutter/material.dart';
import 'package:searching_datas/app/home2/widget/home_body_full_widget.dart';
import '../../../constants/app_colors.dart';
import '../../home/widgets/static_home_app_bar_title_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
      body: const HomeBodyFullWidget()
    );
  }
}
