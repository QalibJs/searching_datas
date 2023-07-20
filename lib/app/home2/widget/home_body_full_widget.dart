import 'package:flutter/cupertino.dart';
import 'package:searching_datas/app/home2/widget/home_list_view_builder_widget.dart';

import '../../../constants/app_paddings.dart';
import '../../../constants/app_sized_box.dart';
import '../../home/widgets/static_home_input_widget.dart';

class HomeBodyFullWidget extends StatelessWidget {
  const HomeBodyFullWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: AppPaddings.lr12(),
        child: Column(
          children: [
            AppSizedBox.h10,
            const StaticHomeInputWidget(isStatic: false),
            AppSizedBox.h10,
            const HomeListViewBuilderWidget()
          ],
        ),
      ),
    );
  }
}
