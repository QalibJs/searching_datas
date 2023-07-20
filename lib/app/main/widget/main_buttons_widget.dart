import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:searching_datas/cubit/users_cubit.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_navigators.dart';
import '../../../constants/app_sized_box.dart';
import '../../../constants/app_texts.dart';
import '../../../global/global_button_widget.dart';
import '../../home/screen/static_home_screen.dart';
import '../../home2/screen/home_screen.dart';

class MainButtonsWidget extends StatelessWidget {
  const MainButtonsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    UsersCubit usersCubit = context.read<UsersCubit>();
    return Column(
      children: [
        GlobalButtonWidget(
          color: AppColors.black,
          text: AppTexts.api,
          onPressed: () {
            usersCubit.getUsers();
            AppNavigators.go(
              context,
              const HomeScreen(),
            );
          },
        ),
        AppSizedBox.h20,
        GlobalButtonWidget(
          text: AppTexts.staticc,
          color: AppColors.black,
          onPressed: () {
            AppNavigators.go(
              context,
              const StaticHomeScreen(),
            );
          },
        ),
      ],
    );
  }
}
