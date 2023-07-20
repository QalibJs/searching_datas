import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:searching_datas/app/main/screen/main_screen.dart';
import 'package:searching_datas/provider/home_provider.dart';
import 'package:sizer/sizer.dart';
import 'cubit/users_cubit.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => UsersCubit()),
        ChangeNotifierProvider(
            create: (context) => HomeProvider()..findUsers()),
      ],
      child: Sizer(
        builder: (context, orientation, deviceType) {
          return MaterialApp(
            title: 'Flutter Demo',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: const MainScreen(),
          );
        },
      ),
    );
  }
}
