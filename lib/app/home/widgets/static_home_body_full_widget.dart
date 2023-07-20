import 'package:flutter/material.dart';
import '../../../constants/app_sized_box.dart';
import 'static_home_input_widget.dart';
import 'static_home_list_view_widget.dart';

class StaticHomeBodyFullWidget extends StatelessWidget {
  const StaticHomeBodyFullWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            AppSizedBox.h10,
            const StaticHomeInputWidget(
              isStatic: true,
            ),
            AppSizedBox.h40,
            const StaticHomeListViewWidget()
          ],
        ),
      ),
    );
  }
}
