import 'package:flutter/material.dart';
import 'package:searching_datas/app/main/widget/main_buttons_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            MainButtonsWidget(),
          ],
        ),
      ),
    );
  }
}
