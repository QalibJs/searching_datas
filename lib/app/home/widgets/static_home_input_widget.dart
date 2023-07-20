import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:searching_datas/cubit/users_cubit.dart';
import 'package:searching_datas/provider/home_provider.dart';
import '../../../constants/app_texts.dart';
import '../../../global/global_input_widget.dart';

class StaticHomeInputWidget extends StatelessWidget {
  final bool isStatic;
  const StaticHomeInputWidget({super.key, required this.isStatic});

  @override
  Widget build(BuildContext context) {
    HomeProvider homeProvider = context.watch<HomeProvider>();
    UsersCubit usersCubit = context.read<UsersCubit>();
    return GlobalInputWidget(
      controller: usersCubit.apiController,
      hintText: AppTexts.search,
      prefixIcon: const Icon(Icons.search),
      onChanged: (value) {
        isStatic ? homeProvider.searchingMethod(value) : usersCubit.getUsers();
      },
    );
  }
}
